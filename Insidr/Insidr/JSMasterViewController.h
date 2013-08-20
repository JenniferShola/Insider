//
//  JSMasterViewController.h
//  Insidr
//
//  Created by Shola Oyedele on 8/18/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JSMasterViewController : UITableViewController
@property (nonatomic,strong) NSManagedObjectContext* managedObjectContext;
@property (nonatomic, strong) NSArray *users;
@end
