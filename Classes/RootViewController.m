//
//  RootViewController.m
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright Joshua Vickery 2009. All rights reserved.
//

#import "RootViewController.h"
#import "iphonetablesamplecrudAppDelegate.h"
#import "Dog.h"
#import "DogController.h"

@implementation RootViewController

@synthesize dogs;

- (IBAction) addButtonPressed:(id)sender {
	DogController *dogController = [DogController dogController];
	dogController.dogs = dogs;
	[self.navigationController pushViewController:dogController animated:YES];
}

#pragma mark UIViewController methods

- (void)viewDidLoad {
	self.dogs = [NSMutableArray array];
}

- (void)viewDidAppear:(BOOL)animated {
	[self.tableView reloadData];
}

#pragma mark UITableView methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [dogs count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	cell.text = [[dogs objectAtIndex:indexPath.row] name];

    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	DogController *dogController = [DogController dogController];
	dogController.dogs = dogs;
	dogController.dog = [dogs objectAtIndex:indexPath.row];
	[self.navigationController pushViewController:dogController animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	if (editingStyle == UITableViewCellEditingStyleDelete) {
		[tableView beginUpdates];
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES]; 
		[dogs removeObjectAtIndex:indexPath.row];
		[tableView endUpdates];
	}
}


#pragma mark cleanup

- (void)dealloc {
	[dogs release];
    [super dealloc];
}


@end

