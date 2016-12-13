//
//  Card.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Card.h"

#pragma mark - Class Extension
#pragma mark -

@interface Card ()

@property (readwrite, nonatomic) CardType cardType;
@property (readwrite, copy, nonatomic) NSString *labelText;

@end

@implementation Card

- (instancetype)initWithCardType:(CardType)cardType labelText:(NSString *)labelText {
    self = [super init];
    if (self) {
        self.cardType = cardType;
        self.labelText = labelText;
    }
    return self;
}

+ (NSString *)textForCardType:(CardType)cardType {
    switch (cardType) {
        case CardTypeBaby:
            return @"Baby";
            break;
        case CardTypeCreature:
            return @"Creature";
            break;
        case CardTypeWeapon:
            return @"Weapon";
            break;

        default:
            NSAssert(NO, @"Switch statement is exhaustive.");
            break;
    }
}

@end
