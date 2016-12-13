//
//  Utility.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Utility : NSObject

+ (NSArray<id> *)shuffle:(NSArray<id> *)items;
+ (nullable id)selectItem:(NSArray<id> *)items;
+ (NSArray<id> *)filterItems:(NSArray<id> *)items withBlock:(BOOL (^)(id item))filterBlock;
+ (NSArray<id> *)flatMapItems:(NSArray<id> *)items withBlock:(nullable id (^)(id item))flatMapBlock;

@end

NS_ASSUME_NONNULL_END
