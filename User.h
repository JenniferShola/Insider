//
//  User.h
//  Insider
//
//  Created by Shola Oyedele on 8/14/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Interaction;

@interface User : NSManagedObject

@property (nonatomic, retain) NSString * name;
@property (nonatomic, retain) NSString * email;
@property (nonatomic, retain) NSString * connection;
@property (nonatomic, retain) NSString * phoneNumber;
@property (nonatomic, retain) NSString * photo;
@property (nonatomic, retain) NSNumber * reminder;
@property (nonatomic, retain) NSNumber * strength;
@property (nonatomic, retain) NSSet *interaction;
@end

@interface User (CoreDataGeneratedAccessors)

- (void)addInteractionObject:(Interaction *)value;
- (void)removeInteractionObject:(Interaction *)value;
- (void)addInteraction:(NSSet *)values;
- (void)removeInteraction:(NSSet *)values;

@end
