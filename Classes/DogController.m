//
//  DogController.m
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import "DogController.h"
#import "Dog.h"

@implementation DogController

+ (DogController *)dogController {
	return [[[DogController alloc] initWithNibName:@"DogView" bundle:nil] autorelease];
}

- (void) save {
	if (nil == managedObject) {
		self.managedObject = [[[Dog alloc] init] autorelease];
		[parentObjects addObject:managedObject];
	}
	
	[managedObject setName:textField.text];

	[self.navigationController popViewControllerAnimated:YES];
}

#pragma mark UIViewController methods

- (void)viewDidLoad {
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] 
											  initWithBarButtonSystemItem:UIBarButtonSystemItemDone 
											  target:self 
											  action:@selector(save)] autorelease];
	self.navigationItem.title = @"Dog";
}

- (void)viewWillAppear:(BOOL)animated {
	textField.text = [managedObject name];
}

- (void)viewDidAppear:(BOOL)animated {
	[textField becomeFirstResponder];
	textField.text = [managedObject name];
}

@end