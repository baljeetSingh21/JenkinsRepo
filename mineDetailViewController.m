//
//  mineDetailViewController.m
//  StoryboardSample
//
//  Created by Vicky Mathneja on 08/07/13.
//  Copyright (c) 2013 LPU. All rights reserved.
//

#import "mineDetailViewController.h"

@interface mineDetailViewController ()

@end

@implementation mineDetailViewController
@synthesize recipeLabel;
@synthesize recipeName;
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
    recipeLabel.text = recipeName;
	// Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
