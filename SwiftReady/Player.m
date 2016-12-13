//
//  Player.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Player.h"

#pragma mark - Class Extension
#pragma mark -

@interface Player ()

@property (readwrite, strong, nonatomic) NSMutableArray<Card *> *cards;

@end

@implementation Player

- (void)provokeBabies:(Card *)card {
    // Must be a provoke card
}

@end
