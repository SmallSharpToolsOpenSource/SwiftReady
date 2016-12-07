//
//  Bear.h
//  SwiftReady
//
//  Created by Brennan Stehling on 12/7/16.
//  Copyright © 2016 SmallSharpTools LLC. All rights reserved.
//

#import <Foundation/Foundation.h>

@class Baby;

NS_ASSUME_NONNULL_BEGIN

@interface Bear : NSObject

@property (strong, nonatomic) NSString *name;

- (void)eatBaby:(Baby *)baby;

@end

NS_ASSUME_NONNULL_END
