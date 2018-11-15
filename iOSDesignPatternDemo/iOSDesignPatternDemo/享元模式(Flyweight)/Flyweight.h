//
//  Flyweight.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/6.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Flyweight <NSObject>

- (void)operation:(NSString *)extrinsicState;

@end

NS_ASSUME_NONNULL_END
