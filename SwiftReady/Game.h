//
//  Game.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Card;
@class Player;

NS_ASSUME_NONNULL_BEGIN

@interface Game : NSObject

@property (readonly, nonatomic) NSArray<Card *> *cards;
@property (readonly, nonatomic) NSArray<Player *> *player;

@end

NS_ASSUME_NONNULL_END
