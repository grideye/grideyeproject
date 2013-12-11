//
//  FirstViewController.m
//  Grid-Eye
//
//  Created by administrator on 9/16/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "FirstViewController.h"
#import <RestKit/CoreData.h>
#import "RKCells.h"
#import "RKSensor.h"

@interface FirstViewController () {
    GLfloat red[64];
    GLfloat blue[64];
    GLfloat green[64];
    IBOutlet UILabel *Cell_1;
    IBOutlet UILabel *Cell_2;
    IBOutlet UILabel *Cell_3;
    IBOutlet UILabel *Cell_4;
    IBOutlet UILabel *Cell_5;
    IBOutlet UILabel *Cell_6;
    IBOutlet UILabel *Cell_7;
    IBOutlet UILabel *Cell_8;
    IBOutlet UILabel *Cell_9;
    IBOutlet UILabel *Cell_10;
    IBOutlet UILabel *Cell_11;
    IBOutlet UILabel *Cell_12;
    IBOutlet UILabel *Cell_13;
    IBOutlet UILabel *Cell_14;
    IBOutlet UILabel *Cell_15;
    IBOutlet UILabel *Cell_16;
    IBOutlet UILabel *Cell_17;
    IBOutlet UILabel *Cell_18;
    IBOutlet UILabel *Cell_19;
    IBOutlet UILabel *Cell_20;
    IBOutlet UILabel *Cell_21;
    IBOutlet UILabel *Cell_22;
    IBOutlet UILabel *Cell_23;
    IBOutlet UILabel *Cell_24;
    IBOutlet UILabel *Cell_25;
    IBOutlet UILabel *Cell_26;
    IBOutlet UILabel *Cell_27;
    IBOutlet UILabel *Cell_28;
    IBOutlet UILabel *Cell_29;
    IBOutlet UILabel *Cell_30;
    IBOutlet UILabel *Cell_31;
    IBOutlet UILabel *Cell_32;
    IBOutlet UILabel *Cell_33;
    IBOutlet UILabel *Cell_34;
    IBOutlet UILabel *Cell_35;
    IBOutlet UILabel *Cell_36;
    IBOutlet UILabel *Cell_37;
    IBOutlet UILabel *Cell_38;
    IBOutlet UILabel *Cell_39;
    IBOutlet UILabel *Cell_40;
    IBOutlet UILabel *Cell_41;
    IBOutlet UILabel *Cell_42;
    IBOutlet UILabel *Cell_43;
    IBOutlet UILabel *Cell_44;
    IBOutlet UILabel *Cell_45;
    IBOutlet UILabel *Cell_46;
    IBOutlet UILabel *Cell_47;
    IBOutlet UILabel *Cell_48;
    IBOutlet UILabel *Cell_49;
    IBOutlet UILabel *Cell_50;
    IBOutlet UILabel *Cell_51;
    IBOutlet UILabel *Cell_52;
    IBOutlet UILabel *Cell_53;
    IBOutlet UILabel *Cell_54;
    IBOutlet UILabel *Cell_55;
    IBOutlet UILabel *Cell_56;
    IBOutlet UILabel *Cell_57;
    IBOutlet UILabel *Cell_58;
    IBOutlet UILabel *Cell_59;
    IBOutlet UILabel *Cell_60;
    IBOutlet UILabel *Cell_61;
    IBOutlet UILabel *Cell_62;
    IBOutlet UILabel *Cell_63;
    IBOutlet UILabel *Cell_64;
    IBOutlet UILabel *timeStampField;
    IBOutlet UILabel *thermistorField;
}

@property (weak, nonatomic) IBOutlet GLKView *glkView;
@property (strong, nonatomic) IBOutlet UILabel *timeStampField;
@property (strong, nonatomic) IBOutlet UILabel *thermistorField;

@end

@implementation FirstViewController

@synthesize fetchedResultsController;
@synthesize string, value;
@synthesize timeStampField, thermistorField;
@synthesize isSleeping;
@synthesize nextSensor;
@synthesize realtimeManager;
@synthesize thermistorValue, tempArray;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    nextSensor = [[RKSensor alloc] init];
    tempArray = [[NSMutableArray alloc] initWithCapacity:64];
    
    // Set isSleeping variable
    isSleeping = FALSE;
    
    // Set up OpenGL SE
    self.glkView.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    // Set the view controller as the delegate for the GLKView subview
    self.glkView.delegate = self;
    
    RKLogConfigureByName("RestKit/", RKLogLevelWarning);
    RKLogConfigureByName("RestKit/Network*", RKLogLevelTrace);
    RKLogConfigureByName("RestKit/ObjectMapping", RKLogLevelInfo);
    RKLogConfigureByName("RestKit/CoreData", RKLogLevelTrace);
    
    // Override point for customization after application launch.
    NSURL *realtimeURL = [NSURL URLWithString:@"http://grideye.no-ip.biz/grideye/webservice.php"];
    
    AFHTTPClient *realtimeClient = [[AFHTTPClient alloc] initWithBaseURL:realtimeURL];
    
    //let AFNetworking manage the activity indicator
    [AFNetworkActivityIndicatorManager sharedManager].enabled = YES;
    
    // We want to work with JSON-Data
    [realtimeClient setDefaultHeader:@"Accept" value:RKMIMETypeJSON];
    
    // Initialize Restkit
    realtimeManager = [[RKObjectManager alloc] initWithHTTPClient:realtimeClient];
    
    // Setup our object mappings
    /**
     Mapping by entity. Here we are configuring a maping by targetting a Core Data entity with a specific
     name. This allows us to map back Sensor database objects directly onto NSManagedObject instances
     there is no backing model class
     */
    
    RKObjectMapping *realtimeSensorMapping = [RKObjectMapping mappingForClass:[RKSensor class]];
    realtimeSensorMapping.forceCollectionMapping = YES;
    [realtimeSensorMapping addAttributeMappingsFromDictionary:@{
                                                                @"timeStamp"     : @"timeStamp",
                                                                @"id"      : @"sensorID",
                                                                }];
    
    
    RKObjectMapping *realtimeCellMapping = [RKObjectMapping mappingForClass:[RKCells class]];
    [realtimeCellMapping addAttributeMappingsFromDictionary:@{
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
                                                              @"timeStamp" : @"timeStamp"
                                                              }];
    
    
    RKRelationshipMapping *relationshipMapping = [RKRelationshipMapping relationshipMappingFromKeyPath:@"cells" toKeyPath:@"cells" withMapping:realtimeCellMapping];
    
    // Add Realtime Relationship Mapping
    [realtimeSensorMapping addPropertyMapping:relationshipMapping];
    
    //Update date format so that we can parse Sensor dates properly
    [RKObjectMapping addDefaultDateFormatterForString:@"E MMM d HH:mm:ss Z y" inTimeZone:nil];
    
    // Register our mappings with the provider
    RKResponseDescriptor *realtimeResponseDescriptorSensor = [RKResponseDescriptor responseDescriptorWithMapping:realtimeSensorMapping method:RKRequestMethodAny pathPattern:nil keyPath:@"sensor" statusCodes:RKStatusCodeIndexSetForClass(RKStatusCodeClassSuccessful)];
    
    [realtimeManager addResponseDescriptor:realtimeResponseDescriptorSensor];
    
    /***
     Complete Core Data stack initialization
     */

    // Load the object model via Restkit
    //realtimeManager = [RKObjectManager sharedManager];
    
    dispatch_queue_t realtimeQueue = dispatch_queue_create("Realtime Queue", NULL);
    
    // Draw frames for count, with 1 second between each frame.
    dispatch_async(realtimeQueue, ^{
        [self updateRealtime];
    });

    
}

- (void)viewWillDisappear:(BOOL)animated
{
    isSleeping = TRUE;
}

- (void)viewWillAppear:(BOOL)animated
{
    isSleeping = FALSE;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - GLKViewDelegate
- (void)glkView:(GLKView *)view drawInRect:(CGRect)rect
{
    const int squareSide = 171;
    const int squarePlusGap = 173;
    
    // Set the background for the main view to gray and clear it to that color
    glClearColor(0.5, 0.5, 0.5, 1.0);
    glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
    
    // Enable the scissor test; this permits us to specify a rectangle
    // that will be filled with the clear color
    glEnable(GL_SCISSOR_TEST);
    
    for (int y = 7; y >= 0; y--) {
        for (int x = 7; x >= 0; x--) {
            // Set the square location and dimensions
            glScissor((squarePlusGap * x),1200-(squarePlusGap * y), squareSide, squareSide);
            
            // Fill the rectangle
            glClearColor(red[63-(y * 8 + x)], green[63-(y*8+x)], blue[63-(y*8+x)], 1.0);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        }
    }
}

- (void)animate
{
    const int secondsPerFrame = 1.0;
    
    // Create a secondary queue for handling animation.
    dispatch_queue_t animationQueue = dispatch_queue_create("Animation Queue", NULL);
    
    // Draw frames for count, with 1 second between each frame.
    dispatch_async(animationQueue, ^{
        
        // Sleeping loop
        do {
            //NSLog(@"isSleeping: %s", isSleeping ? "YES" : "NO");
        } while (isSleeping);
        
        // Calculate red values for cells of current frame.
        [self calcData];
        
        // Dispatch drawing tasks to the main (UI) frame
        dispatch_async(dispatch_get_main_queue(), ^{
            [self.glkView setNeedsDisplay];
            [self setLabels];
            self.timeStampField.text = nextSensor.timeStamp;
            self.thermistorField.text = [nextSensor.cells valueForKey:@"thermistor"];
            [self updateRealtime];
        });
            
        // Sleep for 1 second
        [NSThread sleepForTimeInterval:secondsPerFrame];
    });
}


- (void)calcData
{
    thermistorValue = [[nextSensor.cells valueForKey:@"thermistor"] floatValue];
    
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [nextSensor.cells valueForKey:theCell];
        [tempArray insertObject:val atIndex:i];
    }
    
    //NSLog(@"thermistor : %f", thermistorValue);
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [nextSensor.cells valueForKey:theCell];
        //NSLog(@"Cell[%i] float: %f", i, [val floatValue]/200);
        float temp_float = [val floatValue];
        
        BOOL maxVal = false;

        if (((int)8<i) && (i<(int)56)) {
            if ((!((i%8) == 7)) && (!((i%8) == 0))) {
                //NSLog(@"high float: %@", [tempArray objectAtIndex:i]);
                float high = [[tempArray objectAtIndex:i+8] floatValue];
                float low = [[tempArray objectAtIndex:i-8] floatValue];
                float right = [[tempArray objectAtIndex:i-1] floatValue];
                float left = [[tempArray objectAtIndex:i+1] floatValue];
                float RT = [[tempArray objectAtIndex:(i+7)] floatValue];
                float LT = [[tempArray objectAtIndex:(i+9)] floatValue];
                float RB = [[tempArray objectAtIndex:(i-9)] floatValue];
                float LB = [[tempArray objectAtIndex:(i-7)] floatValue];
                if ((high < temp_float) && (low < temp_float) && (right < temp_float) && (left < temp_float)
                    && (RT < temp_float) && (LT < temp_float) && (RB < temp_float) && (LB < temp_float)) {
                    maxVal = true;
                }
            }
        }
        
        
        temp_float = temp_float - thermistorValue;
        //NSLog(@"temp_float: %f", temp_float);
        if (!maxVal) {
            if (temp_float < 0) {
                red[i]=(CGFloat)(0.0);
                blue[i]=(CGFloat)(0.2-(temp_float/10));
                green[i]=(CGFloat)(0.0);
                //NSLog(@"float value (RED): %f", red[i]);
            }else if(temp_float == 0){
                red[i]=(CGFloat)(0.0);
                blue[i]=(CGFloat)(0.0);
                green[i]=(CGFloat)(0.0);
            }else{
                red[i]=(CGFloat)(0.2+(temp_float/10));
                blue[i]=(CGFloat)(0.0);
                green[i]=(CGFloat)(0.0);
                //NSLog(@"float value (BLUE): %f", blue[i]);
            }
        }
        else {
            red[i]=(CGFloat)(1.0);
            blue[i]=(CGFloat)(0.0);
            green[i]=(CGFloat)(1.0);
        }
    }
}

- (void)setLabels
{
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [nextSensor.cells valueForKey:theCell];
        int labelVal = [val integerValue] - thermistorValue;
        
        [tempArray insertObject:val atIndex:i];
        //int value = [[tempArray objectAtIndex:i] integerValue];
        NSLog(@"Tempvalue: %@", [tempArray objectAtIndex:i]);
        
        UILabel *label = (UILabel*)[self.view viewWithTag:i+1];
        //NSLog(@"label: %@", label);
        label.text = [NSString stringWithFormat:@"%i", labelVal];
        
    }
}
- (IBAction)update:(UIBarButtonItem *)sender {

    [realtimeManager getObjectsAtPath:@"" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult){
        
        NSArray *sensor = [mappingResult array];
        //NSLog(@"Loaded statuses: %@", [sensor objectAtIndex:0]);
        nextSensor = [sensor objectAtIndex:0];
        
    }failure:^(RKObjectRequestOperation *operation, NSError *error){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        NSLog(@"Hit error: %@", error);
    }];

}
- (void)updateRealtime
{
    //[NSThread sleepForTimeInterval:1];
    
    [realtimeManager getObjectsAtPath:@"" parameters:nil success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult){
        //NSLog(@"Result: %@", [mappingResult array]);
        NSArray *sensor = [mappingResult array];
        //NSLog(@"Loaded statuses: %@", [sensor objectAtIndex:0]);
        nextSensor = [sensor objectAtIndex:0];
        
        if ([sensor objectAtIndex:0] != NULL) {
            [self animate];
        }
        
    }failure:^(RKObjectRequestOperation *operation, NSError *error){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        NSLog(@"Hit error: %@", error);
    }];

}
@end
