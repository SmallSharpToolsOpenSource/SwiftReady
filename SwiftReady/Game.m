//
//  Game.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Game.h"

#import "Card.h"
#import "Baby.h"
#import "Creature.h"
#import "Weapon.h"
#import "NSArray+SwiftReady.h"

#pragma mark - Class Extension
#pragma mark -

@interface Game ()

@property (readonly, nonatomic) NSArray<Card *> *allCards;

@property (readonly, nonatomic) NSArray<Card *> *babyCards;
@property (readonly, nonatomic) NSArray<Card *> *creatureCards;
@property (readonly, nonatomic) NSArray<Card *> *weaponCards;

@property (strong, nonatomic) NSMutableDictionary *cardsCache;

@end

@implementation Game {
    NSArray<Card *> *_babyCards;
    NSArray<Card *> *_creatureCards;
    NSArray<Card *> *_weaponCards;
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.cardsCache = @{}.mutableCopy;
    }
    return self;
}

- (void)prepareCards {
    NSArray<Card *> *cards = [self.allCards shuffle];
    NSLog(@"Cards: %@", cards);
}

#pragma mark - Properties
#pragma mark -

- (NSArray<Card *> *)allCards {
    NSArray<Card *> *cards = @[];

    // TODO: add all cards for babies, creatures, weapons, etc

    return cards;
}

- (NSArray<Card *> *)babyCards {
    return [self cardsByType:CardTypeBaby];
}

- (NSArray<Card *> *)creatureCards {
    return [self cardsByType:CardTypeCreature];
}

- (NSArray<Card *> *)weaponCards {
    return [self cardsByType:CardTypeWeapon];
}

- (NSArray<Card *> *)cardsByType:(CardType)cardType {
    NSArray<Card *> *cachedCards = self.cardsCache[@(cardType)];
    if (cachedCards) {
        return cachedCards;
    }

    NSArray<Card *> *cards = [[self.allCards filterWithBlock:^BOOL(id  _Nonnull item) {
        return NO;
    }] shuffle];

    self.cardsCache[@(cardType)] = cards;

    return cards;
}

@end
