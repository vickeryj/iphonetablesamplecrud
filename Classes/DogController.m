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

- (id) managedObject {
	return [[[Dog alloc] init] autorelease];
}
	

#pragma mark UIViewController methods

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.title = @"Dog";
}

@end