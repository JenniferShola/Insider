//
//  InsiderAppDelegate.m
//  Insider
//
//  Created by Shola Oyedele on 8/5/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import "InsiderAppDelegate.h"
#import <Parse/Parse.h>
#import "User.h"
#import "Interaction.h"

@interface InsiderAppDelegate()
@property (nonatomic, assign) BOOL firstRun;
@end

@implementation InsiderAppDelegate 

@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;
@synthesize window = _window;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    [Parse setApplicationId:@"eAjykdgsxUHrnPMo8OPVnj3S84qyEl4Ahw4Lxqis"
                  clientKey:@"H8FNZyIWw6pExRmLE7ypQ0iXzZrjfETv2VIbvcWM"];
    [PFAnalytics trackAppOpenedWithLaunchOptions:launchOptions];
    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

#pragma mark - Core Data stack

// Returns the managed object context for the application.
// If the context doesn't already exist, it is created and bound to the persistent store coordinator for the application.
- (NSManagedObjectContext *)managedObjectContext
{
    if (_managedObjectContext != nil) {
        return _managedObjectContext;
    }
    
    NSPersistentStoreCoordinator *coordinator = [self persistentStoreCoordinator];
    if (coordinator != nil) {
        _managedObjectContext = [[NSManagedObjectContext alloc] init];
        [_managedObjectContext setPersistentStoreCoordinator:coordinator];
    }
    
    if (self.firstRun)
    {
        User *userName = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:_managedObjectContext];
        [userName setName:@"Shola"];
        [userName setPhoneNumber:@"555-555-1234"];
        [userName setConnection:@"Friend"];
        [userName setEmail:@"sjoyedele@gmail.com"];
        [userName setReminder: [NSNumber numberWithInt:60]];
        [userName setPhoto:@"sholaPhoto1.jpg"];
        
        
        userName = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:_managedObjectContext];
        [userName setName:@"Omoju Miller"];
        [userName setPhoneNumber:@"555-555-1235"];
        [userName setConnection:@"CODE2040 Mentor"];
        [userName setEmail:@"fake@gmail.com"];
        [userName setReminder: [NSNumber numberWithInt:60]];
        [userName setPhoto:@"omojuPhoto1.jpg"];
        
        
        userName = [NSEntityDescription insertNewObjectForEntityForName:@"User" inManagedObjectContext:_managedObjectContext];
        [userName setName:@"Janeth"];
        [userName setPhoneNumber:@"555-555-1236"];
        [userName setConnection:@"Friend"];
        [userName setEmail:@"janeth.moranc@gmail.com"];
        [userName setReminder: [NSNumber numberWithInt:60]];
        [userName setPhoto:@"janethPhoto1.jpg"];
        
        [self saveContext];
        
    }
    
    
    return _managedObjectContext;
}

// Returns the managed object model for the application.
// If the model doesn't already exist, it is created from the application's model.
- (NSManagedObjectModel *)managedObjectModel
{
    if (_managedObjectModel != nil) {
        return _managedObjectModel;
    }
    NSURL *modelURL = [[NSBundle mainBundle] URLForResource:@"Insider" withExtension:@"momd"];
    _managedObjectModel = [[NSManagedObjectModel alloc] initWithContentsOfURL:modelURL];
    return _managedObjectModel;
}

// Returns the persistent store coordinator for the application.
// If the coordinator doesn't already exist, it is created and the application's store added to it.
- (NSPersistentStoreCoordinator *)persistentStoreCoordinator
{
    if (_persistentStoreCoordinator != nil) {
        return _persistentStoreCoordinator;
    }
    
    NSURL *storeURL = [[self applicationDocumentsDirectory] URLByAppendingPathComponent:@"Insider.sqlite"];
    self.firstRun = ![[NSFileManager defaultManager] fileExistsAtPath:[storeURL path]];
    
    
    NSError *error = nil;
    _persistentStoreCoordinator = [[NSPersistentStoreCoordinator alloc] initWithManagedObjectModel:[self managedObjectModel]];
    
    if (![_persistentStoreCoordinator addPersistentStoreWithType:NSSQLiteStoreType configuration:nil URL:storeURL options:nil error:&error]) {
        /*
         Replace this implementation with code to handle the error appropriately.
         
         abort() causes the application to generate a crash log and terminate. You should not use this function in a shipping application, although it may be useful during development.
         
         Typical reasons for an error here include:
         * The persistent store is not accessible;
         * The schema for the persistent store is incompatible with current managed object model.
         Check the error message to determine what the actual problem was.
         
         
         If the persistent store is not accessible, there is typically something wrong with the file path. Often, a file URL is pointing into the application's resources directory instead of a writeable directory.
         
         If you encounter schema incompatibility errors during development, you can reduce their frequency by:
         * Simply deleting the existing store:
         [[NSFileManager defaultManager] removeItemAtURL:storeURL error:nil]
         
         * Performing automatic lightweight migration by passing the following dictionary as the options parameter:
         @{NSMigratePersistentStoresAutomaticallyOption:@YES, NSInferMappingModelAutomaticallyOption:@YES}
         
         Lightweight migration will only work for a limited set of schema changes; consult "Core Data Model Versioning and Data Migration Programming Guide" for details.
         
         */
        NSLog(@"Unresolved error %@, %@", error, [error userInfo]);
        abort();
    }
    
    //[userName.interactions methodName] countObjects, For-Loop/Iterate, Sort into Array
    
    NSFetchRequest * request = [[NSFetchRequest alloc] initWithEntityName:@"User"];
    NSError *e = nil;
    NSArray * users = [_managedObjectContext executeFetchRequest:request  error:&e];
    if (error)
    {
        //do something here
    }
    
    for (User* key in users) {
        Interaction *i = [[Interaction alloc] init];
        i.timestamp = [NSDate date];
        i.notes = @"It's so cool interacting with you and talking about programming";
        i.type = [NSNumber numberWithInt:3];
        i.user = key;
        [key addInteractionObject:i];
    }
    
    
    return _persistentStoreCoordinator;
}

#pragma mark - Application's Documents directory

// Returns the URL to the application's Documents directory.
- (NSURL *)applicationDocumentsDirectory
{
    return [[[NSFileManager defaultManager] URLsForDirectory:NSDocumentDirectory inDomains:NSUserDomainMask] lastObject];
}


@end
