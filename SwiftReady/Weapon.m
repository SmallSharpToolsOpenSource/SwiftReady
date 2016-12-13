//
//  Weapon.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/12/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Weapon.h"

#pragma mark - Class Extension
#pragma mark -

@interface Weapon ()

@property (readwrite, nonatomic) WeaponType weaponType;
@property (readwrite, copy, nonatomic) NSString *name;

@end

@implementation Weapon

- (instancetype)initWithWeaponType:(WeaponType)weaponType name:(NSString *)name {
    self = [super init];
    if (self) {
        self.weaponType = weaponType;
        self.name = name;
    }
    return self;
}

- (NSString *)description {
    NSString *text = [Weapon textForWeaponType:self.weaponType];
    return [NSString stringWithFormat:@"%@ (%@)", self.name, text];
}

+ (NSString *)textForWeaponType:(WeaponType)weaponType {
    switch (weaponType) {
        case WeaponTypeAxe:
            return @"Axe";
            break;
        case WeaponTypeMissile:
            return @"Missile";
            break;
        case WeaponTypeShotgun:
            return @"Shotgun";
            break;

        default:
            NSAssert(NO, @"Switch statement is exhaustive.");
            break;
    }
}

@end
