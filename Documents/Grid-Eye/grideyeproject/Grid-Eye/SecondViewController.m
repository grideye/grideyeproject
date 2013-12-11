//
//  SecondViewController.m
//  Grid-Eye
//
//  Created by administrator on 9/16/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "SecondViewController.h"
#import "MenuViewcontroller.h"
#import <RestKit.h>

@interface SecondViewController ()
{
    GLfloat red[64];
    GLfloat blue[64];
    GLfloat green;
    NSString *cellTemps[64];
    UILabel *labels[64];
    IBOutlet UISegmentedControl *controlSwitch;
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
    IBOutlet UISegmentedControl *rangeEnableSwitch;
}
@property (weak, nonatomic) IBOutlet GLKView *glkView;
@property (strong, nonatomic) IBOutlet UISegmentedControl *controlSwitch;
@property (strong, nonatomic) IBOutlet UILabel *viewTimeStamp;
@property (strong, nonatomic) IBOutlet UILabel *viewThermistor;
@property (strong, nonatomic) IBOutlet UISegmentedControl *rangeEnableSwitch;

@end

@implementation SecondViewController

@synthesize dataContents, cells, isSleeping;
@synthesize queryCriteria, controlSwitch, isDoneDrawing, rangeEnabled, isCalculating;
@synthesize rangeEnableSwitch;
@synthesize upper, lower;
@synthesize lowerText, upperText, frameText, requestText;
@synthesize returnData, popoverController;
@synthesize secondsPerFrame, queryParams;
@synthesize activityView;
@synthesize coreDataContext, httpDataContext;
@synthesize thermistorValue, countField;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    secondsPerFrame = 1.0;
    
    returnData = [[NSMutableArray alloc] initWithObjects:@"25", @"35", @"", @"1.0", nil];
    
    // Set isSleeping variable
    isSleeping = TRUE;
    rangeEnabled = FALSE;
    
    activityView = [[UIActivityIndicatorView alloc] initWithActivityIndicatorStyle:UIActivityIndicatorViewStyleWhiteLarge];
    activityView.center=self.view.center;
    [activityView.layer setBackgroundColor:[[UIColor blackColor] CGColor]];
    
    // Set up OpenGL SE
    self.glkView.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    // Set the view controller as the delegate for the GLKView subview
    self.glkView.delegate = self;
    
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)animate
{
    
    // Create a secondary queue for handling animation.
    dispatch_queue_t animationQueue = dispatch_queue_create("Animation Queue", NULL);

    // Draw frames for count, with 1 second between each frame.
    dispatch_async(animationQueue, ^{
        NSLog(@"Frames: %i", self.numFrames);
        for (int i = 0; i < self.numFrames; i++) {
            isDoneDrawing = FALSE;
            
            do {
                //NSLog(@"isSleeping: %s", isSleeping ? "YES" : "NO");
            } while (isSleeping);
            
            // Calculate red values for cells of current frame.
            cells = dataContents[i];
            [self calcData];
            
            // Dispatch drawing tasks to the main (UI) frame
            dispatch_async(dispatch_get_main_queue(), ^{
                [self.glkView setNeedsDisplay];
                [self setLabels];
                self.countField.text = [NSString stringWithFormat:@"%d", self.numFrames];
                self.viewThermistor.text = [cells.thermistor stringValue];
                self.viewTimeStamp.text = cells.timeStamp;
            });
            
            // Sleep for 1 second
            [NSThread sleepForTimeInterval:secondsPerFrame];
        }
        isDoneDrawing = TRUE;
        [controlSwitch setSelectedSegmentIndex:1];
    });
}

- (void)calcData
{
    thermistorValue = [[cells valueForKey:@"thermistor"] floatValue];
    isCalculating = TRUE;
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [cells valueForKey:theCell];
        //NSLog(@"cellValue: %@", val);
        //NSLog(@"Cell[%i] float: %f", i, [val floatValue]/200);
        float temp_float = [val floatValue];
        
        if (!rangeEnabled) {
            temp_float = temp_float - thermistorValue;
            //NSLog(@"temp_float: %f", temp_float);
            if (temp_float > 0) {
                red[i]=(CGFloat)(0+(temp_float/10));
                blue[i]=(CGFloat)(0.0);
                //NSLog(@"float value (RED): %f", red[i]);
            }else if(temp_float == 0){
                red[i]=(CGFloat)(0.0);
                blue[i]=(CGFloat)(0.0);
                green=(CGFloat)(0.0);
            }else{
                red[i]=(CGFloat)(0.0);
                blue[i]=(CGFloat)(0-temp_float/10);
                //NSLog(@"float value (BLUE): %f", blue[i]);
            }
        }
        else {
            if (temp_float >= lower && temp_float <= upper) {
                red[i]=(CGFloat)(0.0);
                green=(CGFloat)(0.0);
                blue[i]=(CGFloat)(0.0);
            }
            else{
                red[i]=(CGFloat)(1.0);
                green=(CGFloat)(1.0);
                blue[i]=(CGFloat)(1.0);
            }
        }
        //red[i] = (GLfloat)[val floatValue]/200;
    }
    isCalculating = FALSE;
}

- (void)setLabels
{
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [cells valueForKey:theCell];
        NSString *text = [val stringValue];
        int convert = [val integerValue] - thermistorValue;
                
        UILabel *label = (UILabel*)[self.view viewWithTag:i+1];
        //NSLog(@"label: %@", label);
        if ([text isKindOfClass:[NSString class]]) {
            label.text = [NSString stringWithFormat:@"%i", convert];
        }
    }
}

- (void)deleteDBContents:(NSEntityDescription*)entityDescription error:(NSError*)error
{
    int count = 0;
    if (dataContents.count != 0) {
        do {
            NSLog(@"count %i, counter: %i", dataContents.count, count);
            
            [coreDataContext deleteObject:dataContents[count]];
            NSLog(@"%@ object deleted", entityDescription);

            if (![coreDataContext save:&error]) {
                NSLog(@"Error deleting %@ - error:%@", entityDescription, error);
            }
            count++;
        } while (count != dataContents.count);
    }
    /*if (dataContents.count != 0) {
        for (int x = 0; x < dataContents.count; x++) {
            [coreDataContext deleteObject:dataContents[x]];
            NSLog(@"%@ object deleted", entityDescription);
        }
        if (![coreDataContext save:&error]) {
            NSLog(@"Error deleting %@ - error:%@", entityDescription, error);
        }
    }*/
    
    [self requestNewData];

}

- (void)performDBRequest:(NSString *)type
{
    [activityView startAnimating];
    [self.view addSubview:activityView];
    
    //[[UIApplication sharedApplication] beginIgnoringInteractionEvents];
    
    coreDataContext = [RKManagedObjectStore defaultStore].persistentStoreManagedObjectContext;
    NSError *error = nil;
    NSLog(@"type: %@", type);
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Cells" inManagedObjectContext:coreDataContext];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    if (![type isEqualToString:@"Sensor"]) {
        request.sortDescriptors = @[[NSSortDescriptor sortDescriptorWithKey:@"timeStamp" ascending:YES]];
    }
    [request setEntity:entityDescription];
    NSLog(@"Database manager connected!");
    
    // Save returned data objects to NSArray *dataContents
    dataContents = [coreDataContext executeFetchRequest:request error:&error];
    NSLog(@"Fetch Results: %i", dataContents.count);
    
    if ([type isEqualToString:@"Sensor"]) {
        int count = 0;
        if (dataContents.count != 0) {
            do {
                //NSLog(@"count %i, counter: %i", dataContents.count, count);
                
                [coreDataContext deleteObject:dataContents[count]];
                //NSLog(@"%@ object deleted", entityDescription);
                
                if (![coreDataContext save:&error]) {
                    NSLog(@"Error deleting %@ - error:%@", entityDescription, error);
                }
                count++;
            } while (count != dataContents.count);
        }
        [self requestNewData];

        //[self deleteDBContents:entityDescription error:error];
        type=nil;
    }else{
        // Set number of frames from database array size
        self.numFrames = dataContents.count;
        
        NSLog(@"dataContents count: %i\n Elements: %@", self.numFrames, dataContents);
        //NSDictionary *attributes = [entityDescription attributesByName];
        [activityView stopAnimating];
        [activityView removeFromSuperview];
        
        //[[UIApplication sharedApplication] endIgnoringInteractionEvents];
        
        [self animate];
        isSleeping = TRUE;
    }
}

- (void)requestNewData
{
    [[RKObjectManager sharedManager] getObjectsAtPath:@"" parameters:queryParams success:^(RKObjectRequestOperation *operation, RKMappingResult *mappingResult){
        NSLog(@"Result: %@", [mappingResult array]);
        [self performDBRequest:@"Cells"];
    }failure:^(RKObjectRequestOperation *operation, NSError *error){
        UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"Error" message:[error localizedDescription] delegate:nil cancelButtonTitle:@"OK" otherButtonTitles:nil];
        [alert show];
        NSLog(@"Hit error: %@", error);
    }];

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
            glClearColor(red[63-(y * 8 + x)], green, blue[63-(y*8+x)], 1.0);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        }
    }
}


- (IBAction)controlSwitchChange:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        isSleeping = FALSE;
        assert(!isSleeping);
        
        if (isDoneDrawing == TRUE) {
            [self animate];
        }
    }
    else {
        isSleeping = TRUE;
        assert(isSleeping);
        
    }
}

- (IBAction)rangeEnableChange:(UISegmentedControl *)sender {
    if (sender.selectedSegmentIndex == 0) {
        rangeEnabled = TRUE;
        //assert(rangeEnabled);
    }
    else {
        rangeEnabled = FALSE;
        //assert(!rangeEnabled);
    }
}

- (IBAction)menuButtonPressed:(UIButton *)sender {
    isSleeping = TRUE;
    
    MenuViewcontroller *menu = [[MenuViewcontroller alloc] initWithNibName:@"MenuViewcontroller" bundle:nil];
    menu.delegate = self;
    
    popoverController = [[UIPopoverController alloc] initWithContentViewController:menu];
    CGSize size = CGSizeMake(320, 400);
    popoverController.popoverContentSize = size;
    
    menu.lowerTextField.text = returnData[0];
    menu.upperTextField.text = returnData[1];
    menu.sliderTextField.text = returnData[3];
    menu.theSlider.value = [returnData[3] floatValue];
    menu.lowerStepper.value = [returnData[0] integerValue];
    menu.upperStepper.value = [returnData[1] integerValue];

    [popoverController presentPopoverFromRect:sender.frame inView:self.view permittedArrowDirections:UIPopoverArrowDirectionUp animated:YES];
}

#pragma mark - MenuViewControllerDelegate method
- (void)setValuesFromMenu:(NSMutableArray*)array
{
    isSleeping = FALSE;
    returnData = array;
    
    // Set temp range labels and reference variables
    [lowerText setText:returnData[0]];
    lower = [returnData[0] floatValue];
    upperText.text = returnData[1];
    upper = [returnData[1] floatValue];
    
    // Set frame rate
    [self.frameText setText:returnData[3]];
    secondsPerFrame = [returnData[3] floatValue];
    
    // Dismiss Popover
    [popoverController dismissPopoverAnimated:YES];
    
    if (![returnData[2] isEqual:@""]) {
        // Set request label and begin request
        [requestText setText:returnData[2]];
        
        queryParams = [NSDictionary dictionaryWithObject:returnData[2] forKey:@"usertimestamp"];
        
        [[NSURLCache sharedURLCache] removeAllCachedResponses];
        [self performDBRequest:@"Sensor"];
    }
}

- (void)closePopover
{
    [popoverController dismissPopoverAnimated:YES];
}

@end
