//
//  SContext.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/15.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Strategy.h"

NS_ASSUME_NONNULL_BEGIN

@interface SContext : NSObject

@property(nonatomic, strong) id<Strategy> strategy;

- (void)algorithm;

@end

NS_ASSUME_NONNULL_END
