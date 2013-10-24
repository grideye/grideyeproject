//
//  SecondViewController.h
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
#import "_Cells.h"

@class MenuViewcontroller;

@interface SecondViewController : UIViewController <GLKViewDelegate, NSFetchedResultsControllerDelegate> {
    MenuViewcontroller *menu;
    NSString *queryCriteria;
    float upper;
    float lower;
}

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, strong) _Cells *cells;
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSString *value;
@property (nonatomic) NSInteger numFrames;
@property (nonatomic, retain) NSArray *dataContents;
@property (nonatomic) BOOL isSleeping;
@property (nonatomic) BOOL isDoneDrawing;
@property (nonatomic) BOOL rangeEnabled;
@property (nonatomic) BOOL isCalculating;
@property (nonatomic, strong) MenuViewcontroller *menu;
@property (nonatomic, strong) NSString *queryCriteria;
@property (nonatomic) float upper;
@property (nonatomic) float lower;

@end
