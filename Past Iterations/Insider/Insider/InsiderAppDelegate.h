//
//  InsiderAppDelegate.h
//  Insider
//
//  Created by Shola Oyedele on 8/5/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InsiderAppDelegate : UIResponder <UIApplicationDelegate>

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;
@property (strong, nonatomic) UIWindow *window;

- (void)saveContext;
- (NSURL *)applicationDocumentsDirectory;

@end
