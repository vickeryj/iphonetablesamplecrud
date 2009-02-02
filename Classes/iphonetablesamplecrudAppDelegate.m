//
//  iphonetablesamplecrudAppDelegate.m
//  iphonetablesamplecrud
//
//  Created by vickeryj on 2/2/09.
//  Copyright Joshua Vickery 2009. All rights reserved.
//

#import "iphonetablesamplecrudAppDelegate.h"
#import "RootViewController.h"


@implementation iphonetablesamplecrudAppDelegate

@synthesize window;
@synthesize navigationController;


- (void)applicationDidFinishLaunching:(UIApplication *)application {
	
	// Configure and show the window
	[window addSubview:[navigationController view]];
	[window makeKeyAndVisible];
}


- (void)applicationWillTerminate:(UIApplication *)application {
	// Save data if appropriate
}


- (void)dealloc {
	[navigationController release];
	[window release];
	[super dealloc];
}

@end
