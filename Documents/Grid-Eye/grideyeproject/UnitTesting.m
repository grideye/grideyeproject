//
//  UnitTesting.m
//  Grid-Eye
//
//  Created by administrator on 11/20/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <SenTestingKit/SenTestingKit.h>
#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>
#import <RestKit/Testing.h>

#import "RKSensor.h"
#import "RKCells.h"

@interface UnitTesting : SenTestCase

@end

@implementation UnitTesting

- (void)setUp
{
    [super setUp];
    // Put setup code here; it will be run once, before the first test case.
    NSBundle *testTargetBundle = [NSBundle bundleWithIdentifier:@"com.okstate.Grid-Eye"];
    [RKTestFixture setFixtureBundle:testTargetBundle];
}

- (void)tearDown
{
    // Put teardown code here; it will be run once, after the last test case.
    [super tearDown];
}

- (void)testExample
{
    STFail(@"No implementation for \"%s\"", __PRETTY_FUNCTION__);
}

- (RKObjectMapping *)sensorMapping
{
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
    
    return  realtimeSensorMapping;
}

- (void)testMappingOfFile
{
    id parsedJSON = [RKTestFixture parsedObjectWithContentsOfFixture:@"sensor.json"];
    RKMappingTest *test = [RKMappingTest testForMapping:[self sensorMapping] sourceObject:parsedJSON destinationObject:Nil];
    //[test addExpectation:[RKPropertyMappingTestExpectation expectationWithSourceKeyPath:@"sensor" destinationKeyPath:<#(NSString *)#> mapping:<#(RKMapping *)#>]]
    STAssertTrue([test evaluate], @"The objects were mapped properly");
    
}

@end
