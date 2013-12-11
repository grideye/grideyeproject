//
//  MenuViewcontroller.h
//  Grid-Eye
//
//  Created by administrator on 10/7/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol MenuDelegate <NSObject>
@required
-(void)setValuesFromMenu:(NSArray*)array;
-(void)closePopover;
@end

@interface MenuViewcontroller : UIViewController <UIApplicationDelegate, UINavigationControllerDelegate> {
    IBOutlet UILabel *sliderTextField;
    IBOutlet UISlider *theSlider;
    IBOutlet UIStepper *lowerStepper;
    IBOutlet UIStepper *upperStepper;
}

@property (strong, nonatomic) IBOutlet UITextField *lowerTextField;
@property (strong, nonatomic) IBOutlet UITextField *upperTextField;
@property (strong, nonatomic) IBOutlet UITextField *fetchField;
@property (nonatomic, retain) IBOutlet UILabel *sliderTextField;
@property (nonatomic, retain) IBOutlet UIStepper *lowerStepper;
@property (nonatomic, retain) IBOutlet UIStepper *upperStepper;
@property (nonatomic, retain) IBOutlet UISlider *theSlider;
@property (nonatomic, weak) id <MenuDelegate> delegate;
@end