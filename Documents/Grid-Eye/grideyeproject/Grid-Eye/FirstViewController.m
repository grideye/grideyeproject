//
//  FirstViewController.m
//  Grid-Eye
//
//  Created by administrator on 9/16/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "FirstViewController.h"
#import <RestKit/CoreData.h>
#import "Sensor.h"
#import "OpenGLView.h"

@interface FirstViewController () {
    GLfloat red[64];
}

@property (weak, nonatomic) IBOutlet GLKView *glkView;
@property (strong, nonatomic) IBOutlet UITextField *timeStampField;
@property (strong, nonatomic) IBOutlet UITextField *thermistorField;

@end

@implementation FirstViewController

@synthesize fetchedResultsController, cells;
@synthesize string, value;
@synthesize timeStampField, thermistorField;
@synthesize isSleeping;

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    // Set isSleeping variable
    isSleeping = TRUE;
    
    // Set up OpenGL SE
    self.glkView.context = [[EAGLContext alloc] initWithAPI:kEAGLRenderingAPIOpenGLES2];
    
    // Set the view controller as the delegate for the GLKView subview
    self.glkView.delegate = self;
    
    // Run the animation
    //[self animate];

    
    /*int j, i;
    NSManagedObjectContext *context = [RKManagedObjectStore defaultStore].mainQueueManagedObjectContext;
    NSError *error = nil;
    NSEntityDescription *entityDescription = [NSEntityDescription entityForName:@"Cells" inManagedObjectContext:context];
    NSFetchRequest *request = [[NSFetchRequest alloc] init];
    [request setEntity:entityDescription];
    NSArray *dataContents = [context executeFetchRequest:request error:&error];
    */
    //NSLog(@"Content: %@", dataContents);
    //NSDictionary *attributes = [entityDescription attributesByName];
    
    /*
    for (i = 0; i < 8; i++){
        for (j = 0; j < 8; j++){
            red = 0;
            
            self.glView = [[OpenGLView alloc] initWithFrame:CGRectMake(44+(j*85),190+(i*85), 84, 84) color:red];
            [self.squares addObject:self.glView];
            [self.view addSubview:self.glView];
        }
    }
    */
    
    //[self performSelectorInBackground:@selector(doSomething:) withObject:dataContents];
    //for(NSString *attributeName in attributes){
    //    id val = [dataContents[0] valueForKey:attributeName];
    //    NSLog(@"attribute %@ = %@", attributeName, val);
    //}
    //dispatch_queue_t drawQueue = dispatch_queue_create("Draw Queue", NULL);
    /*dispatch_async(drawQueue, ^{
        NSLog(@"Entered Block");
        for (int x = 0; x < dataContents.count; x++) {
            [self drawFrame:dataContents[x]];
            [NSThread sleepForTimeInterval:1];
        }
    });*/
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
            glClearColor(red[63-(y * 8 + x)], 0.0, 0.0, 1.0);
            glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        }
    }
    
    /*
    int i, j;
    
    string = @"cell";
    int count = 1;
    //cells = values;
    //[NSThread sleepForTimeInterval:1];
        
    for (i = 0; i < 8; i++){
        for (j = 0; j < 8; j++){
            NSString *curCell = [string stringByAppendingString:[NSString stringWithFormat:@"%d",count]];
            //NSLog(@"curCell: %@", curCell);
            //id val = [cells valueForKey:curCell];
            
            //NSLog(@"value: %@ \n\n", val);
            //red = [val floatValue]/200;
            //NSLog(@"RED: %f", red);
            
            dispatch_async(dispatch_get_main_queue(), ^{
                //NSLog(@"Entered Block");
                //red = [val floatValue]/200;
                //[((OpenGLView*)[self.squares objectAtIndex:count-1]) render:red];
                ////self.glView = [[OpenGLView alloc] initWithFrame:CGRectMake(44+(j*85),190+(i*85), 84, 84) color:red];
                
                //[self.view addSubview:self.glView];
                glFlush();
            });
            //self.glView = [[OpenGLView alloc] initWithFrame:CGRectMake(44+(j*85),190+(i*85), 84, 84) color:red];
            
            //[self.view addSubview:_glView];
            //glFlush();
            string = @"cell";
            count++;
        }
    }
    //NSLog(@"Iteration %d", x);*/
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
            self.thermistorField.text = [cells.thermistor stringValue];
            self.timeStampField.text = cells.time;
        });
            
        // Sleep for 1 second
        [NSThread sleepForTimeInterval:secondsPerFrame];
    });
}


- (void)calcData
{
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [cells valueForKey:theCell];
        NSLog(@"Cell[%i] float: %f", i, [val floatValue]/200);
        
        red[i] = (GLfloat)[val floatValue]/200;
    }
}

- (void)setLabels
{
    for (int i = 0; i < 64; i++) {
        NSString *theCell = [@"cell" stringByAppendingString:[NSString stringWithFormat:@"%d", i+1]];
        id val = [cells valueForKey:theCell];
        NSString *text = [val stringValue];
        
        UILabel *label = (UILabel*)[self.view viewWithTag:i+1];
        NSLog(@"label: %@", label);
        if ([text isKindOfClass:[NSString class]]) {
            label.text = text;
        }
    }
}
@end
