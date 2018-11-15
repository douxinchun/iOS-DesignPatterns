//
//  AbstractFactory.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractProductA.h"
#import "AbstractProductB.h"

NS_ASSUME_NONNULL_BEGIN

@protocol AbstractFactory <NSObject>

+ (id<AbstractProductA> )createProductA;
+ (id<AbstractProductB> )createProductB;

@end

NS_ASSUME_NONNULL_END
