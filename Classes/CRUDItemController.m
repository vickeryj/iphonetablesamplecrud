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

- (void)dealloc {
	[managedObject release];
	[parentObjects release];
    [super dealloc];
}


@end
