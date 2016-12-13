//
//  Baby.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/7/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, BabyType) {
    BabyTypeMean = 0,
    BabyTypeAngry,
    BabyTypePoopy
};

NS_ASSUME_NONNULL_BEGIN

@interface Baby : NSObject

@property (readonly, nonatomic) BabyType babyType;
@property (readonly, nonatomic) NSString *name;

- (instancetype)initWithBabyType:(BabyType)babyType name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
