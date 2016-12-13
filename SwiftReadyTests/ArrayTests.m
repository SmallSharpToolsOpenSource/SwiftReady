//
//  ArrayTests.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NSArray+SwiftReady.h"
#import "Card.h"

@interface ArrayTests : XCTestCase

@end

@implementation ArrayTests

- (void)setUp {
    [super setUp];
    
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testShuffle {
    NSArray<NSNumber *> *numbers = @[@1, @2, @3, @4, @5, @6, @7, @8, @9, @10];
    NSArray<NSNumber *> *shuffled = [numbers shuffle];

    XCTAssertEqual(numbers.count, shuffled.count);
    BOOL different = NO;
    for (NSUInteger i=0; i<numbers.count; i++) {
        NSNumber *n = numbers[i];
        NSNumber *s = shuffled[i];
        NSLog(@"%@ and %@", n, s);
        if (n != s) {
            different = YES;
            break;
        }
    }

    // Note: It is possible a random shuffle can result in the same order, but highly unlikely.

    XCTAssertTrue(different, @"Shuffled array must be different than original array.");
}

- (void)testSelecting {
    NSMutableArray<Card *> *cards = [self cardsForTesting].mutableCopy;
    NSUInteger count = cards.count;

    Card *card1 = [cards selectItem];
    [cards removeObject:card1];
    XCTAssertEqual(cards.count, count - 1);
    Card *card2 = [cards selectItem];
    [cards removeObject:card2];
    XCTAssertEqual(cards.count, count - 2);
    Card *card3 = [cards selectItem];
    [cards removeObject:card3];
    XCTAssertEqual(cards.count, count - 3);

    XCTAssertNotEqual(card1, card2);
    XCTAssertNotEqual(card2, card3);
    XCTAssertNotEqual(card3, card1);
}

- (void)testSelectingFromEmptyArray {
    NSArray<Card *> *cards = @[];

    Card *card = [cards selectItem];
    XCTAssertNil(card);
}

- (void)testFiltering {
    NSArray<Card *> *cards = [self cardsForTesting];

    NSArray<Card *> *babyCards = [cards filterWithBlock:^BOOL(Card * card) {
        return card.cardType == CardTypeBaby;
    }];
    NSArray<Card *> *creatureCards = [cards filterWithBlock:^BOOL(Card * card) {
        return card.cardType == CardTypeCreature;
    }];
    NSArray<Card *> *weaponCards = [cards filterWithBlock:^BOOL(Card * card) {
        return card.cardType == CardTypeWeapon;
    }];

    XCTAssertEqual(babyCards.count, 3);
    XCTAssertEqual(creatureCards.count, 3);
    XCTAssertEqual(weaponCards.count, 3);
}

- (void)testFlatMapping {
    NSArray<Card *> *cards = [self cardsForTesting];

    // Filter to baby cards then extract the label text to array of strings.
    NSArray<NSString *> *labelTexts = [[cards filterWithBlock:^BOOL(Card * card) {
        return card.cardType == CardTypeBaby;
    }] flatMapWithBlock:^id _Nonnull(Card * card) {
        return card.labelText;
    }];

    NSLog(@"Label Texts: %@", labelTexts);

    XCTAssertEqual(labelTexts.count, 3);
    for (id item in labelTexts) {
        XCTAssertTrue([item isKindOfClass:[NSString class]]);
    }
}

#pragma mark - Private Methods
#pragma mark -

- (NSArray<Card *> *)cardsForTesting {
    NSArray<Card *> * cards = @[
        [[Card alloc] initWithCardType:CardTypeBaby labelText:@"Mean"],
        [[Card alloc] initWithCardType:CardTypeBaby labelText:@"Angry"],
        [[Card alloc] initWithCardType:CardTypeBaby labelText:@"Poopy"],

        [[Card alloc] initWithCardType:CardTypeCreature labelText:@"Bear"],
        [[Card alloc] initWithCardType:CardTypeCreature labelText:@"Shark"],
        [[Card alloc] initWithCardType:CardTypeCreature labelText:@"Kitten"],

        [[Card alloc] initWithCardType:CardTypeWeapon labelText:@"Axe"],
        [[Card alloc] initWithCardType:CardTypeWeapon labelText:@"Missile"],
        [[Card alloc] initWithCardType:CardTypeWeapon labelText:@"Shotgun"]
    ];

    return cards;


}

@end
