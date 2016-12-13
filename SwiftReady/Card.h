//
//  Card.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, CardType) {
    CardTypeBaby = 0,
    CardTypeCreature,
    CardTypeWeapon
};

NS_ASSUME_NONNULL_BEGIN

@interface Card : NSObject

@property (readonly, nonatomic) CardType cardType;
@property (readonly, nonatomic) NSString *labelText;

- (instancetype)initWithCardType:(CardType)cardType labelText:(NSString *)labelText;

@end

NS_ASSUME_NONNULL_END
