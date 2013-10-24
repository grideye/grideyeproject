//
//  AppDelegate.m
//  Grid-Eye
//
//  Created by administrator on 9/16/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "AppDelegate.h"
#import <RestKit/CoreData.h>
#import <RestKit/RestKit.h>
#import <MobileCoreServices/MobileCoreServices.h>
#import <SystemConfiguration/SystemConfiguration.h>
#import "CoreData/Human/Sensor.h"
#import "CoreData/Human/Cells.h"

@implementation AppDelegate

@synthesize appDelegateCells;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    NSError *error = nil;

    RKLogConfigureByName("RestKit/", RKLogLevelWarning);
    RKLogConfigureByName("RestKit/Network*", RKLogLevelTrace);
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelInfo);
    RKLogConfigureByName("RestKit/CoreData", RKLogLevelTrace);
    
    // Override point for customization after application launch.
    NSURL *baseURL = [NSURL URLWithString:@"http://grideye.no-ip.biz/grideye/webservice.php"];
    //AFHTTPClient *client = [[AFHTTPClient alloc] initWithBaseURL:baseURL];
    
    // Initialize Restkit
    RKObjectManager *objectManager = [RKObjectManager managerWithBaseURL:baseURL];

    //let AFNetworking manage the activity indicator
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;

    
    NSData *data = [NSData dataWithContentsOfURL:baseURL];
    id response = [NSJSONSerialization JSONObjectWithData:data options:NSJSONReadingAllowFragments error:&error];
    NSLog(@"Your JSON object: %@ Or error is: %@", response, error);
    
    
    //Initialize managed object store
    NSManagedObjectModel *managedObjectModel = [NSManagedObjectModel mergedModelFromBundles:nil];
    RKManagedObjectStore *managedObjectStore = [[RKManagedObjectStore alloc] initWithManagedObjectModel:managedObjectModel];
    objectManager.managedObjectStore = managedObjectStore;

    
    // Setup our object mappings
    /**
     Mapping by entity. Here we are configuring a maping by targetting a Core Data entity with a specific
     name. This allows us to map back Sensor database objects directly onto NSManagedObject instances
     there is no backing model class
    */
    
    RKEntityMapping *sensorMapping = [RKEntityMapping mappingForEntityForName:@"Sensor" inManagedObjectStore:managedObjectStore];
    sensorMapping.identificationAttributes = @[ @"sensorID"];
    [sensorMapping addAttributeMappingsFromDictionary:@{
     @"timeStamp"     : @"timeStamp",
     @"id"      : @"sensorID",
     @"thermistor"    : @"thermistor"
     }];
    
    
    RKEntityMapping *cellMapping = [RKEntityMapping mappingForEntityForName:@"Cells" inManagedObjectStore:managedObjectStore];
    cellMapping.identificationAttributes = @[ @"time"];
    [cellMapping addAttributeMappingsFromDictionary:@{
                                                      @"cell1":  @"cell1", @"cell2":  @"cell2", @"cell3":  @"cell3", @"cell4":  @"cell4", @"cell5":  @"cell5",
                                                      @"cell6":  @"cell6", @"cell7":  @"cell7", @"cell8":  @"cell8", @"cell9":  @"cell9", @"cell10":  @"cell10",
                                                      @"cell11":  @"cell11", @"cell12":  @"cell12", @"cell13":  @"cell13", @"cell14":  @"cell14", @"cell15":  @"cell15",
                                                      @"cell16":  @"cell16", @"cell17":  @"cell17", @"cell18":  @"cell18", @"cell19":  @"cell19", @"cell20":  @"cell20",
                                                      @"cell21":  @"cell21", @"cell22":  @"cell22", @"cell23":  @"cell23", @"cell24":  @"cell24", @"cell25":  @"cell25",
                                                      @"cell26":  @"cell26", @"cell27":  @"cell27", @"cell28":  @"cell28", @"cell29":  @"cell29", @"cell30":  @"cell30",
                                                      @"cell31":  @"cell31", @"cell32":  @"cell32", @"cell33":  @"cell33", @"cell34":  @"cell34", @"cell35":  @"cell35",
                                                      @"cell36":  @"cell36", @"cell37":  @"cell37", @"cell38":  @"cell38", @"cell39":  @"cell39", @"cell40":  @"cell40",
                                                      @"cell41":  @"cell41", @"cell42":  @"cell42", @"cell43":  @"cell43", @"cell44":  @"cell44", @"cell45":  @"cell45",
                                                      @"cell46":  @"cell46", @"cell47":  @"cell47", @"cell48":  @"cell48", @"cell49":  @"cell49", @"cell50":  @"cell50",
                                                      @"cell51":  @"cell51", @"cell52":  @"cell52", @"cell53":  @"cell53", @"cell54":  @"cell54", @"cell55":  @"cell55",
                                                      @"cell56":  @"cell56", @"cell57":  @"cell57", @"cell58":  @"cell58", @"cell59":  @"cell59", @"cell60":  @"cell60",
                                                      @"cell61":  @"cell61", @"cell62":  @"cell62", @"cell63":  @"cell63", @"cell64":  @"cell64",
                                                      @"thermistor":  @"thermistor",
                                                      @"parentSensor": @"parentSensor",
                                                      @"time" : @"time"
                                                      }];
    
    [sensorMapping addPropertyMapping:[RKRelationshipMapping relationshipMappingFromKeyPath:@"cells" toKeyPath:@"cells" withMapping:cellMapping]];

    //Update date format so that we can parse Sensor dates properly
    [RKObjectMapping addDefaultDateFormatterForString:@"E MMM d HH:mm:ss Z y" inTimeZone:nil];
    
    // Register our mappings with the provider
    RKResponseDescriptor *responseDescriptorSensor = [RKResponseDescriptor responseDescriptorWithMapping:sensorMapping method:RKRequestMethodAny pathPattern:nil keyPath:@"sensor" statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    RKResponseDescriptor *responseDescriptorCells = [RKResponseDescriptor responseDescriptorWithMapping:cellMapping method:RKRequestMethodAny pathPattern:nil keyPath:@"cells" statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    [objectManager addResponseDescriptor:responseDescriptorSensor];
    [objectManager addResponseDescriptor:responseDescriptorCells];
    
    // Database seeding is configured as a copied target of the main application. There are only two differences
    // between the main application target and the 'Generate Seed Database' target:
    //  1) RESTKIT_GENERATE_SEED_DB is defined in the 'Preprocessor Macros' section of the build setting for the target
    //      This is what triggers the conditional compilation to cause the seed database to be built
    //  2) Source JSON files are added to the 'Generate Seed Database' target to be copied into the bundle. This is required
    //      so that the object seeder can find the files when run in the simulator.
#ifdef RESTKIT_GENERATE_SEED_DB
    RKLogConfigureByName("RestKit/Network*", RKLogLevelTrace);
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelInfo);
    RKLogConfigureByName("RestKit/CoreData", RKLogLevelTrace);

    //NSError *error = nil;
    BOOL success = RKEnsureDirectoryExistsAtPath(RKApplicationDataDirectory(), &error);
    if (!success) {
        RKLogError(@"Failed to create Application Data Directory at path '%@': %@", RKApplicationDataDirectory(), error);
    }
    NSString *seedStorePath = [RKApplicationDataDirectory() stringByAppendingPathComponent:@"GrideyeSeedDatabase.sqlite"];
    RKManagedObjectImporter *importer = [[RKManagedObjectImporter alloc] initWithManagedObjectModel:managedObjectModel storePath:seedStorePath];
      //  [importer importObjectsFromItemAtPath:[[NSBundle mainBundle] pathForResource:@"cells" ofType:@"json"] withMapping:cellMapping keyPath:nil error:&error];
    [importer importObjectsFromItemAtPath:[[NSBundle mainBundle] pathForResource:@"sensor"  ofType:@"json"] withMapping:sensorMapping keyPath:@"sensor" error:&error];


    success = [importer finishImporting:&error];
    if(success){
        [importer logSeedingInfo];
    }
    else{
        RKLogError(@"Failed to finish import and save seed database due to error: %@", error);
    }
                                           
#else
    /***
      Complete Core Data stack initialization
    */
    [managedObjectStore createPersistentStoreCoordinator];
    NSString *storePath = [RKApplicationDataDirectory() stringByAppendingPathComponent:@"Grideye.sqlite"];
    NSString *seedPath = [[NSBundle mainBundle] pathForResource:@"GrideyeSeedDatabase" ofType:@"sqlite"];
    //NSError *error;
    NSPersistentStore *persistentStore = [managedObjectStore addSQLitePersistentStoreAtPath:storePath fromSeedDatabaseAtPath:seedPath withConfiguration:nil options:nil error:&error];
    NSAssert(persistentStore, @"Failed to add persistent store with error: %@", error);
                                           
    // Create the managed object contexts
    [managedObjectStore createManagedObjectContexts];
                                           
    // Configure a managed object cache to ensure we dont create duplicate objects
    managedObjectStore.managedObjectCache = [[RKInMemoryManagedObjectCache alloc] initWithManagedObjectContext:managedObjectStore.persistentStoreManagedObjectContext];
    
#endif


    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
