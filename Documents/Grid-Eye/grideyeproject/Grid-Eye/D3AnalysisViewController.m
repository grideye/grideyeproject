//
//  D3AnalysisViewController.m
//  Grid-Eye
//
//  Created by administrator on 10/24/13.
//  Copyright (c) 2013 administrator. All rights reserved.
//

#import "D3AnalysisViewController.h"

@interface D3AnalysisViewController ()

@end

@implementation D3AnalysisViewController

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
	// Do any additional setup after loading the view.
    
    NSString *htmlFile = [[NSBundle mainBundle] pathForResource:@"D3_graph" ofType:@"html"];
    
    UIWebView *webView = [[UIWebView alloc] initWithFrame:CGRectMake(0, 44, 768, 768)];
    webView.delegate = self;

    if (htmlFile != NULL) {
        NSString *htmlString = [NSString stringWithContentsOfFile:htmlFile encoding:NSUTF8StringEncoding error:nil];
        [webView loadHTMLString:htmlString baseURL:nil];
    }
    NSLog(@"htmlFile: %@", htmlFile);
    
    [self.view addSubview:webView];
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
