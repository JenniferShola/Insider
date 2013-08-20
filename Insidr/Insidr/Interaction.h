//
//  Interaction.h
//  Insidr
//
//  Created by Shola Oyedele on 8/18/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class User;

@interface Interaction : NSManagedObject

@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) User *user;

@end
