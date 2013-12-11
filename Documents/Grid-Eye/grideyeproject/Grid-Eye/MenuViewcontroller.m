//
//  MenuViewcontroller.m
//  Grid-Eye
//
//  Created by administrator on 10/7/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "MenuViewcontroller.h"
#import "SecondViewController.h"

@interface MenuViewcontroller ()
@property (nonatomic, retain) NSString *queryCriteria;
@property (nonatomic) NSInteger lowerValue;
@property (nonatomic) NSInteger upperValue;

@end

@implementation MenuViewcontroller

@synthesize fetchField, lowerTextField, upperTextField, queryCriteria;
@synthesize upperValue, lowerValue;
@synthesize theSlider, upperStepper, lowerStepper;
@synthesize sliderTextField;
@synthesize delegate;

bool validated = false;

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    queryCriteria = @"";
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)lowStepper:(UIStepper *)sender {
    //NSLog(@"lowerStepper: %f", [sender value]);
    lowerValue = [sender value];
    lowerTextField.text = [NSString stringWithFormat:@"%i", lowerValue];
}

- (IBAction)upStepper:(UIStepper *)sender {
    //NSLog(@"upperStepper: %f", [sender value]);
    upperValue = [sender value];
    upperTextField.text = [NSString stringWithFormat:@"%i", upperValue];
}
- (IBAction)queryAttrField:(UITextField *)sender {
    NSError *error = nil;
    
    // Regular expression string
    //NSString *verifyQuery = @"\\d\\d?:\\d\\d";
    NSString *verifyQuery = @"(\\d{4})-(\\d{2})-(\\d{2}) (\\d{2}):(\\d{2}):(\\d{2})";
    
    // Create regular expression to verify input
    NSRegularExpression *regexOptions = [NSRegularExpression regularExpressionWithPattern:verifyQuery options:NSRegularExpressionCaseInsensitive error:&error];
    
    NSAssert(regexOptions, @"Unable to create regular expression");
    
    NSRange textRange = NSMakeRange(0, sender.text.length);
    NSRange matchRange = [regexOptions rangeOfFirstMatchInString:sender.text options:NSMatchingReportProgress range:textRange];
    
    NSLog(@"Finished textRange");
    
    //if (matchRange.location != NSNotFound) {
        validated = TRUE;
        queryCriteria = sender.text;
        NSLog(@"Validated");
    //}
}

- (IBAction)frameSlider:(UISlider *)sender {
    //NSLog(@"float: %0.2f", sender.value);
    sliderTextField.text = [NSString stringWithFormat:@"%0.1f", sender.value];
}

- (IBAction)doneBtn:(id)sender {
    if (validated) {
        NSLog(@"queryCriteria: %@", queryCriteria);

         NSMutableArray *theArray = [[NSMutableArray alloc] initWithObjects: lowerTextField.text, upperTextField.text, queryCriteria, sliderTextField.text, nil];
        if (delegate != nil) {
            [delegate setValuesFromMenu:theArray];
        }
    }
    else {
         NSMutableArray *theArray = [[NSMutableArray alloc] initWithObjects:lowerTextField.text, upperTextField.text, @"", sliderTextField.text, nil];
        
        if (delegate != nil) {
            [delegate setValuesFromMenu:theArray];
        }
    }
}

@end
