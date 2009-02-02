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

@synthesize dogs, dog;

+ (DogController *)dogController {
	return [[[DogController alloc] initWithNibName:@"DogView" bundle:nil] autorelease];
}

- (void) cancel {
	[self.navigationController popViewControllerAnimated:YES];
}

- (void) save {
	if (nil == dog) {
		self.dog = [[[Dog alloc] init] autorelease];
		[dogs addObject:dog];
	}
	
	dog.name = textField.text;

	[self.navigationController popViewControllerAnimated:YES];
}

#pragma mark UIViewController methods

- (void)viewDidLoad {
	self.navigationItem.leftBarButtonItem = [[[UIBarButtonItem alloc] 
											  initWithBarButtonSystemItem:UIBarButtonSystemItemCancel 
											  target:self 
											  action:@selector(cancel)] autorelease];
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] 
											  initWithBarButtonSystemItem:UIBarButtonSystemItemDone 
											  target:self 
											  action:@selector(save)] autorelease];
	self.navigationItem.title = @"Dog";
}

- (void)viewWillAppear:(BOOL)animated {
	textField.text = [dog name];
}

- (void)viewDidAppear:(BOOL)animated {
	[textField becomeFirstResponder];
	textField.text = [dog name];
}

#pragma mark cleanup
- (void)dealloc {
	[dogs release];
	[dog release];
	[super dealloc];
}

@end