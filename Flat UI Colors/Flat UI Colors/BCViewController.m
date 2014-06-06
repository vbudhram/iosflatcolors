//
//  BCViewController.m
//  Flat UI Colors
//
//  Created by Vijay Budhram on 6/5/14.
//  Copyright (c) 2014 Baby Carrot Productions. All rights reserved.
//

#import "BCViewController.h"
#import "BCFlatColor.h"

@interface BCViewController ()
{
    NSArray *colors;
    NSArray *colorNames;
}

@end

@implementation BCViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    // Create arrays to hold names and colors
    colorNames = [[NSArray alloc] initWithObjects:
                  @"turquoise",
                  @"emerald",
                  @"peterriver",
                  @"amethyst",
                  @"wetasphalt",
                  @"greensea",
                  @"nephritis",
                  @"belizehole",
                  @"wisteria",
                  @"midnightblue",
                  @"sunflower",
                  @"carrot",
                  @"alizarin",
                  @"clouds",
                  @"concrete",
                  @"orange",
                  @"pumpkin",
                  @"pomegranate",
                  @"silver",
                  @"asbestos",nil];
    
    colors = [[NSArray alloc] initWithObjects:
              [BCFlatColor turquoise],
              [BCFlatColor emerald],
              [BCFlatColor peterriver],
              [BCFlatColor amethyst],
              [BCFlatColor wetasphalt],
              [BCFlatColor greensea],
              [BCFlatColor nephritis],
              [BCFlatColor belizehole],
              [BCFlatColor wisteria],
              [BCFlatColor midnightblue],
              [BCFlatColor sunflower],
              [BCFlatColor carrot],
              [BCFlatColor alizarin],
              [BCFlatColor clouds],
              [BCFlatColor concrete],
              [BCFlatColor orange],
              [BCFlatColor pumpkin],
              [BCFlatColor pomegranate],
              [BCFlatColor silver],
              [BCFlatColor asbestos], nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark Table View Delegate
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [colorNames count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ColorCell" forIndexPath:indexPath];
    
    cell.textLabel.text = [colorNames objectAtIndex:indexPath.row];
    cell.backgroundColor = [colors objectAtIndex:indexPath.row];
    
    return cell;
}

@end
