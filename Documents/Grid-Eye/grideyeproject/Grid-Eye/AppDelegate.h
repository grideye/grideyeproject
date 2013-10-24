//
//  AppDelegate.h
//  Grid-Eye
//
//  Created by administrator on 9/16/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <RestKit/RestKit.h>
#import "_Cells.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate, NSFetchedResultsControllerDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (nonatomic, strong)_Cells *appDelegateCells;

@end
