//
//  Dog.h
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Dog : NSObject {

	NSString *name;
	NSString *dogId;
	
}

@property(nonatomic, retain) NSString *name;
@property(nonatomic, retain) NSString *dogId;

@end
