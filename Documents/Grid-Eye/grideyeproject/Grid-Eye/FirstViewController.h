//
//  FirstViewController.h
//  Grid-Eye
//
//  Created by administrator on 9/16/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <GLKit/GLKit.h>
#import <OpenGLES/ES2/gl.h>
#import <OpenGLES/ES2/glext.h>
#import <QuartzCore/QuartzCore.h>
#import <CoreGraphics/CoreGraphics.h>
#import <RestKit/RestKit.h>
#import "RKCells.h"
#import "RKSensor.h"

@interface FirstViewController : UIViewController <GLKViewDelegate, NSFetchedResultsControllerDelegate>{
    
}

@property (nonatomic, strong)NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, strong)NSString *string;
@property (nonatomic, strong)NSString *value;
@property (nonatomic) BOOL isSleeping;
@property (nonatomic, retain) RKSensor *nextSensor;
@property (nonatomic, retain) RKObjectManager *realtimeManager;
@property (nonatomic) float thermistorValue;
@property (nonatomic, retain)NSMutableArray *tempArray;

@end
