//
//  Tag.h
//  Insider
//
//  Created by Shola Oyedele on 8/14/13.
//  Copyright (c) 2013 Shola Oyedele. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>


@interface Tag : NSManagedObject

@property (nonatomic, retain) NSString * keyword;
@property (nonatomic, retain) NSSet *interaction;
@end

@interface Tag (CoreDataGeneratedAccessors)

- (void)addInteractionObject:(NSManagedObject *)value;
- (void)removeInteractionObject:(NSManagedObject *)value;
- (void)addInteraction:(NSSet *)values;
- (void)removeInteraction:(NSSet *)values;

@end
