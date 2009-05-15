//
//  CRUDTableViewController.h
//  iphonetablesamplecrud
//
//  Created by vickeryj on 3/20/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CRUDItemController;

@interface CRUDTableViewController : UITableViewController {
	NSMutableArray *managedObjects;
}

- (IBAction) addButtonPressed:(id)sender;
+ (CRUDItemController *)crudItemController;

@property(nonatomic, retain) NSMutableArray *managedObjects;

@end
