//
//  Dog.m
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import "Dog.h"


@implementation Dog

@synthesize dogId, name;

#pragma mark cleanup
- (void) dealloc
{
	[dogId release];
	[name release];
	[super dealloc];
}


@end
