//
//  DogController.h
//  objective_resource_screencast
//
//  Created by vickeryj on 2/2/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import <UIKit/UIKit.h>

@class Dog;

@interface DogController : UIViewController {
	
	IBOutlet UITextField *textField;
	NSMutableArray *dogs;
	Dog *dog;

}

@property(nonatomic, retain) NSMutableArray *dogs;
@property(nonatomic, retain) Dog *dog;

+ (DogController *)dogController;

@end