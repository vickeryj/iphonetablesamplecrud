//
//  CRUDTableViewController.m
//  iphonetablesamplecrud
//
//  Created by vickeryj on 3/20/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import "CRUDTableViewController.h"
#import "CRUDItemController.h"


@implementation CRUDTableViewController

@synthesize managedObjects;

+ (CRUDItemController *)crudItemController {
	return [[[CRUDItemController alloc] init] autorelease];
}

- (IBAction) addButtonPressed:(id)sender {
	CRUDItemController *crudItemController = [self crudItemController];
	crudItemController.parentObjects = managedObjects;
	[self.navigationController pushViewController:crudItemController animated:YES];
}

#pragma mark UIViewController methods

- (void)viewDidLoad {
	self.managedObjects = [NSMutableArray array];
}

- (void)viewDidAppear:(BOOL)animated {
	[self.tableView reloadData];
}

#pragma mark UITableView methods

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return [managedObjects count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    static NSString *CellIdentifier = @"Cell";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellIdentifier];
    if (cell == nil) {
        cell = [[[UITableViewCell alloc] initWithFrame:CGRectZero reuseIdentifier:CellIdentifier] autorelease];
    }
	cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
	cell.text = [[managedObjects objectAtIndex:indexPath.row] name];
	
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
	CRUDItemController *crudItemController = [[self class] crudItemController];
	crudItemController.parentObjects = managedObjects;
	crudItemController.managedObject = [managedObjects objectAtIndex:indexPath.row];
	[self.navigationController pushViewController:crudItemController animated:YES];
}

- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
	if (editingStyle == UITableViewCellEditingStyleDelete) {
		[tableView beginUpdates];
		[tableView deleteRowsAtIndexPaths:[NSArray arrayWithObject:indexPath] withRowAnimation:YES]; 
		[managedObjects removeObjectAtIndex:indexPath.row];
		[tableView endUpdates];
	}
}


#pragma mark cleanup

- (void)dealloc {
	[managedObjects release];
    [super dealloc];
}


@end

