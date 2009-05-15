//
//  CRUDItemController.h
//  iphonetablesamplecrud
//
//  Created by vickeryj on 3/20/09.
//  Copyright 2009 Joshua Vickery. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CRUDItemController : UIViewController {
	NSMutableArray *parentObjects;
	id managedObject;
	IBOutlet UITextField *textField;
	UIBarButtonItem *mySaveButton;
}

@property(nonatomic, retain) NSMutableArray *parentObjects;
@property(nonatomic, retain) id managedObject;
@property(nonatomic,retain)	UIBarButtonItem *mySaveButton;

- (void) save;
- (id) managedObject;

@end
