//
//  D3ViewController.m
//  Grid-Eye
//
//  Created by administrator on 10/15/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "D3ViewController.h"

@implementation D3ViewController

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)viewDidLoad
{
    NSString *address = @"bl.ocks.org";
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"TensionCalculator2" ofType:@"html"];
    if (htmlFile != NULL) {
        NSString *htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
        [self loadHTMLString:htmlString baseURL:nil];
    }
    NSLog(@"htmlFile: %@", htmlFile);
}

@end
