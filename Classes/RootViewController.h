//
//  RootViewController.h
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright Joshua Vickery 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface RootViewController : UITableViewController {
	NSMutableArray *dogs;
}

- (IBAction) addButtonPressed:(id)sender;

@property(nonatomic, retain) NSMutableArray *dogs;

@end
