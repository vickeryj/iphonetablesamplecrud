//
//  CRUDItemController.m
//  iphonetablesamplecrud
//
//  Created by vickeryj on 3/20/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import "CRUDItemController.h"


@implementation CRUDItemController

@synthesize parentObjects, managedObject;

- (void) save {
	if (nil == managedObject) {
		self.managedObject = [self managedObject];
		[parentObjects addObject:managedObject];
	}
	
	[managedObject setName:textField.text];
	
	[self.navigationController popViewControllerAnimated:YES];
}

- (id) managedObject {
	return nil;
}


#pragma mark UIViewController methods

- (void)viewDidLoad {
	self.navigationItem.rightBarButtonItem = [[[UIBarButtonItem alloc] 
											   initWithBarButtonSystemItem:UIBarButtonSystemItemDone 
											   target:self 
											   action:@selector(save)] autorelease];
}

- (void)viewDidAppear:(BOOL)animated {
	[textField becomeFirstResponder];
	textField.text = [managedObject description];
}

- (void)dealloc {
	[managedObject release];
	[parentObjects release];
    [super dealloc];
}


@end
