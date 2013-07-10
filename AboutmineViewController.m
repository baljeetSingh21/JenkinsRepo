//
//  AboutmineViewController.m
//  StoryboardSample
//
//  Created by Vicky Mathneja on 10/07/13.
//  Copyright (c) 2013 LPU. All rights reserved.
//

#import "AboutmineViewController.h"

@interface AboutmineViewController ()

@end

@implementation AboutmineViewController
@synthesize webV;
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
    NSURL *url = [NSURL fileURLWithPath:[[NSBundle mainBundle]pathForResource:@"banking.html" ofType:nil]];
    NSURLRequest *request = [NSURLRequest requestWithURL:url];
    [webV loadRequest:request];
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
