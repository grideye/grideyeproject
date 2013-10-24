//
//  Sensor.h
//  Grid-Eye
//
//  Created by administrator on 9/19/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <RestKit/RestKit.h>
#import <RestKit/CoreData.h>
#import "Cells.h"


@interface Sensor : NSManagedObject {
}

/**
 The unique ID of this Sensor
 */
@property (nonatomic, retain)NSString *sensorID;

/**
 The timestamp of when the reading was taken
 */
@property (nonatomic, retain)NSString *timeStamp;

/**
 The Cells object
 */
//@property (nonatomic, retain)NSManagedObject *cells;

@end

/*
@interface Sensor (CoreDataGeneratedAccessors)

- (void)addSensorObject:(Sensor *)cells;
- (void)removeSensorObject:(Sensor *)cells;
- (void)addCells:(NSSet *)values;
- (void)removeCells:(NSSet *)values;

@end
*/