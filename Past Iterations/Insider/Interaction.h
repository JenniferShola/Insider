//
//  Interaction.h
//  Insider
//
//  Created by Shola Oyedele on 8/14/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>

@class Tag;

@interface Interaction : NSManagedObject

@property (nonatomic, retain) NSDate * timestamp;
@property (nonatomic, retain) NSString * notes;
@property (nonatomic, retain) NSNumber * type;
@property (nonatomic, retain) NSManagedObject *user;
@property (nonatomic, retain) NSSet *tag;
@end

@interface Interaction (CoreDataGeneratedAccessors)

- (void)addTagObject:(Tag *)value;
- (void)removeTagObject:(Tag *)value;
- (void)addTag:(NSSet *)values;
- (void)removeTag:(NSSet *)values;

@end
