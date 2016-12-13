//
//  Player.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Card;

NS_ASSUME_NONNULL_BEGIN

@interface Player : NSObject

@property (readonly, nonatomic) NSArray<Card *> *cards;

- (void)provokeBabies:(Card *)card;

@end

NS_ASSUME_NONNULL_END
