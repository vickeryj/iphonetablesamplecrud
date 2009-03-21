//
//  RootViewController.m
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright Joshua Vickery 2009. All rights reserved.
//

#import "RootViewController.h"
#import "iphonetablesamplecrudAppDelegate.h"
#import "DogController.h"

@implementation RootViewController

- (CRUDItemController *)crudItemController {
	return [DogController dogController];
}


#pragma mark UIViewController methods

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.title = @"Dogs";
}

@end