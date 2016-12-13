//
//  Weapon.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, WeaponType) {
    WeaponTypeAxe = 0,
    WeaponTypeMissile,
    WeaponTypeShotgun
};

NS_ASSUME_NONNULL_BEGIN

@interface Weapon : NSObject

@property (readonly, nonatomic) WeaponType weaponType;
@property (readonly, nonatomic) NSString *name;

- (instancetype)initWithWeaponType:(WeaponType)weaponType name:(NSString *)name;

@end

NS_ASSUME_NONNULL_END
