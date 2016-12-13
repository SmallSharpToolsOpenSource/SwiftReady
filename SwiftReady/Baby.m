//
//  Baby.m
//  SwiftReady
//
//  Created by Brennan Stehling on 12/7/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import "Baby.h"

#pragma mark - Class Extension
#pragma mark -

@interface Baby ()

@property (readwrite, nonatomic) BabyType babyType;
@property (readwrite, copy, nonatomic) NSString *name;

@end

@implementation Baby

- (instancetype)initWithBabyType:(BabyType)babyType name:(NSString *)name {
    self = [super init];
    if (self) {
        self.babyType = babyType;
        self.name = name;
    }
    return self;
}

- (NSString *)description {
    NSString *text = [Baby textForBabyType:self.babyType];
    return [NSString stringWithFormat:@"%@ (%@)", self.name, text];
}

+ (NSString *)textForBabyType:(BabyType)babyType {
    switch (babyType) {
        case BabyTypeMean:
            return @"Mean";
            break;
        case BabyTypeAngry:
            return @"Angry";
            break;
        case BabyTypePoopy:
            return @"Poopy";
            break;

        default:
            NSAssert(NO, @"Switch statement is exhaustive.");
            break;
    }
}

@end
