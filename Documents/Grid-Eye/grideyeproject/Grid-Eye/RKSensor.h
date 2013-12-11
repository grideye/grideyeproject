//
//  RKSensor.h
//  Grid-Eye
//
//  Created by administrator on 11/11/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "RKCells.h"

@interface RKSensor : NSObject

@property (nonatomic, copy) NSString *sensorID;
@property (nonatomic, copy) NSString *timeStamp;

@property (nonatomic, strong) RKCells *cells;

@end
