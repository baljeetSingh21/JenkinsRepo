//
//  mineViewController.m
//  StoryboardSample
//
//  Created by Vicky Mathneja on 08/07/13.
//  Copyright (c) 2013 LPU. All rights reserved.
//

#import "mineViewController.h"
#import "mineDetailViewController.h"
@interface mineViewController ()<UITableViewDataSource,UITableViewDelegate>
{
    NSArray *recipes;
}
@end

@implementation mineViewController
@synthesize tableView1;
- (void)viewDidLoad
{
    [super viewDidLoad];
    recipes = [NSArray arrayWithObjects:@"Egg Benedict", @"Mushroom Risotto", @"Full Breakfast", @"Hamburger", @"Ham and Egg Sandwich", @"Creme Brelee", @"White Chocolate Donut", @"Starbucks Coffee", @"Vegetable Curry", @"Instant Noodle with Egg", @"Noodle with BBQ Pork", @"Japanese Noodle with Pork", @"Green Tea", @"Thai Shrimp Cake", @"Angry Birds Cake", @"Ham and Cheese Panini", nil];

	// Do any additional setup after loading the view, typically from a nib.
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [recipes count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *simpleTableIdentifier = @"RecipeCell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:simpleTableIdentifier];
    
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:simpleTableIdentifier];
    }
    
    cell.textLabel.text = [recipes objectAtIndex:indexPath.row];
    return cell;
}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([segue.identifier isEqualToString:@"mineSegue"]) {
        NSIndexPath *indexPath = [self.tableView1 indexPathForSelectedRow];
        mineDetailViewController *destViewController = segue.destinationViewController;
        destViewController.recipeName = [recipes objectAtIndex:indexPath.row];
    }
}
- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
