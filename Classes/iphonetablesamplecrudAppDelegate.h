//
//  iphonetablesamplecrudAppDelegate.h
//  iphonetablesamplecrud
//
//  Created by vickeryj on 2/2/09.
//  Copyright Joshua Vickery 2009. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface iphonetablesamplecrudAppDelegate : NSObject <UIApplicationDelegate> {
    
    UIWindow *window;
    UINavigationController *navigationController;
}

@property (nonatomic, retain) IBOutlet UIWindow *window;
@property (nonatomic, retain) IBOutlet UINavigationController *navigationController;

@end

