//
//  Creature.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Baby;

typedef NS_ENUM(NSUInteger, CreatureType) {
    CreatureTypeBear = 0,
    CreatureTypeShark,
    CreatureTypeKitten
};

NS_ASSUME_NONNULL_BEGIN

@interface Creature : NSObject

@property (readonly, nonatomic) CreatureType creatureType;
@property (readonly, nonatomic) NSString *name;

- (instancetype)initWithCreatureType:(CreatureType)creatureType name:(NSString *)name;
- (void)eatBaby:(Baby *)baby;

@end

NS_ASSUME_NONNULL_END
