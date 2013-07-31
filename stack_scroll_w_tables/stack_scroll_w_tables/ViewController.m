//
//  ViewController.m
//  stack_scroll_w_tables
//
//  Created by Zsolt Normann on 7/31/13.
//  Copyright (c) 2013 Zsolt Normann. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
	// Do any additional setup after loading the view, typically from a nib.
	tbllist = [[NSArray alloc] initWithObjects:@"Alma",@"Korte",@"Barack",@"Dinnye",@"Szilva",@"Alma",@"Korte",@"Barack",@"Dinnye",@"Szilva",@"Alma",@"Korte",@"Barack",@"Dinnye",@"Szilva", nil];

	self.sw.contentSize = CGSizeMake(320*3, self.sw.frame.size.height);
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
	static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleSubtitle reuseIdentifier:CellIdentifier];
    }
    
    // Configure the cell...
	cell.textLabel.text = [tbllist objectAtIndex:indexPath.row];
	
	return cell;

}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
	return [tbllist count];
}

@end
