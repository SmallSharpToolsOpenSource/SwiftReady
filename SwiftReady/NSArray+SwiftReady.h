//
//  NSArray+SwiftReady.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NSArray (SwiftReady)

- (NSArray<id> *)shuffle;
- (nullable id)selectItem;
- (NSArray<id> *)filterWithBlock:(BOOL (^)(id item))filterBlock;
- (NSArray<id> *)flatMapWithBlock:(nullable id (^)(id item))flatMapBlock;

@end

NS_ASSUME_NONNULL_END
