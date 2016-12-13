//
//  Utility.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Utility.h"

NS_ASSUME_NONNULL_BEGIN

@implementation Utility

+ (NSArray<id> *)shuffle:(NSArray<id> *)items {
    // Fisher–Yates shuffle
    // https://en.wikipedia.org/wiki/Fisher–Yates_shuffle

    NSMutableArray *shuffled = [NSMutableArray arrayWithArray:items];

    for (NSUInteger i = items.count; i > 1; i--) {
        NSUInteger j = arc4random_uniform((u_int32_t)i);
        [shuffled exchangeObjectAtIndex:i-1 withObjectAtIndex:j];
    }

    return shuffled;
}

+ (nullable id)selectItem:(NSArray<id> *)items {
    if (items.count == 0) {
        return nil;
    }
    NSUInteger i = arc4random_uniform((u_int32_t)items.count);
    return items[i];
}

+ (NSArray<id> *)filterItems:(NSArray<id> *)items withBlock:(BOOL (^)(id item))filterBlock {
    if (!filterBlock) {
        return @[];
    }

    NSMutableArray *filtered = @[].mutableCopy;

    for (id item in items) {
        if (filterBlock(item)) {
            [filtered addObject:item];
        }
    }

    return filtered;
}

+ (NSArray<id> *)flatMapItems:(NSArray<id> *)items withBlock:(nullable id (^)(id item))flatMapBlock {
    if (!flatMapBlock) {
        return @[];
    }

    NSMutableArray *mapped = @[].mutableCopy;

    for (id item in items) {
        id result = flatMapBlock(item);
        if (result) {
            [mapped addObject:result];
        }
    }

    return mapped;
}

@end

NS_ASSUME_NONNULL_END
