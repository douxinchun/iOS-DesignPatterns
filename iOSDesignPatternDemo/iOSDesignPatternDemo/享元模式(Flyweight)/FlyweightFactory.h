//
//  FlyweightFactory.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/7.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Flyweight.h"

NS_ASSUME_NONNULL_BEGIN

@interface FlyweightFactory : NSObject

- (id<Flyweight>)flyWeightWithString:(NSString *)str;

@end

NS_ASSUME_NONNULL_END
