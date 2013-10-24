//
//  MenuViewcontroller.h
//  Grid-Eye
//
//  Created by administrator on 10/7/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>

@class SecondViewController;

@interface MenuViewcontroller : UIViewController <UIApplicationDelegate> {
    SecondViewController *second;
}

@property (strong, nonatomic) IBOutlet UITextField *lowerTextField;
@property (strong, nonatomic) IBOutlet UITextField *upperTextField;
@property (strong, nonatomic) IBOutlet UITextField *fetchField;
@property (nonatomic, strong) SecondViewController *second;

@end
