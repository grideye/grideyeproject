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

#import "MenuViewcontroller.h"
#import "_Cells.h"

@interface SecondViewController : UIViewController <GLKViewDelegate, NSFetchedResultsControllerDelegate, UIApplicationDelegate, MenuDelegate> {
    //MenuViewcontroller *menu;
    UIPopoverController *popoverController;
    NSString *queryCriteria;
    float upper;
    float lower;
    IBOutlet UILabel *lowerText;
    IBOutlet UILabel *upperText;
    IBOutlet UILabel *requestText;
    IBOutlet UILabel *frameText;
    NSMutableArray *returnData;
    IBOutlet UIButton *menuButton;
}

@property (nonatomic, strong) NSFetchedResultsController *fetchedResultsController;
@property (nonatomic, strong) _Cells *cells;
@property (nonatomic, strong) UIPopoverController *popoverController;
@property (nonatomic, strong) NSString *string;
@property (nonatomic, strong) NSString *value;
@property (nonatomic) NSInteger numFrames;
@property (nonatomic, retain) NSArray *dataContents;
@property (nonatomic) BOOL isSleeping;
@property (nonatomic) BOOL isDoneDrawing;
@property (nonatomic) BOOL rangeEnabled;
@property (nonatomic) BOOL isCalculating;
//@property (nonatomic, strong) MenuViewcontroller *menu;
@property (nonatomic, strong) NSString *queryCriteria;
@property (nonatomic) float upper;
@property (nonatomic) float lower;
@property (nonatomic, retain)IBOutlet UILabel *lowerText;
@property (nonatomic, retain)IBOutlet UILabel *upperText;
@property (nonatomic, retain)IBOutlet UILabel *requestText;
@property (nonatomic, retain)IBOutlet UILabel *frameText;
@property (nonatomic, retain)NSMutableArray *returnData;
@property (nonatomic) float secondsPerFrame;
@property (nonatomic, retain)IBOutlet UIActivityIndicatorView *activityView;
@property (nonatomic, retain)NSDictionary *queryParams;
@property (nonatomic) float thermistorValue;
@property (strong, nonatomic) IBOutlet UILabel *countField;

@property (nonatomic, retain)NSManagedObjectContext *coreDataContext;
@property (nonatomic, retain)NSManagedObjectContext *httpDataContext;

- (void)setValuesFromMenu:(NSMutableArray*)array;

@end
