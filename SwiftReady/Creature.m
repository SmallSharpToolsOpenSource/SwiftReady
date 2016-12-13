//
//  Creature.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Creature.h"

#import "Baby.h"

#pragma mark - Class Extension
#pragma mark -

@interface Creature ()

@property (readwrite, nonatomic) CreatureType creatureType;
@property (readwrite, copy, nonatomic) NSString *name;

@end

@implementation Creature

- (instancetype)initWithCreatureType:(CreatureType)creatureType name:(NSString *)name {
    self = [super init];
    if (self) {
        self.creatureType = creatureType;
        self.name = name;
    }
    return self;
}

- (void)eatBaby:(Baby *)baby {
    NSLog(@"Yum!");
}

- (NSString *)description {
    NSString *text = [Creature textForCreatureType:self.creatureType];
    return [NSString stringWithFormat:@"%@ (%@)", self.name, text];
}

+ (NSString *)textForCreatureType:(CreatureType)creatureType {
    switch (creatureType) {
        case CreatureTypeBear:
            return @"Bear";
            break;
        case CreatureTypeShark:
            return @"Shark";
            break;
        case CreatureTypeKitten:
            return @"Kitten";
            break;

        default:
            NSAssert(NO, @"Switch statement is exhaustive.");
            break;
    }
}

@end
