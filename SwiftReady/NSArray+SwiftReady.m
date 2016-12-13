//
//  NSArray+SwiftReady.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "NSArray+SwiftReady.h"

#import "Utility.h"

@implementation NSArray (SwiftReady)

- (NSArray<id> *)shuffle {
    return [Utility shuffle:self];
}

- (nullable id)selectItem {
    return [Utility selectItem:self];
}

- (NSArray<id> *)filterWithBlock:(BOOL (^)(id item))filterBlock {
    return [Utility filterItems:self withBlock:filterBlock];
}

- (NSArray<id> *)flatMapWithBlock:(nullable id (^)(id item))flatMapBlock {
    return [Utility flatMapItems:self withBlock:flatMapBlock];
}

@end
