//
//  ConcreteDecoratorA.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/5.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Decorator.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteDecoratorA : Decorator

- (void)addBehaviorA;
- (void)operation;

@end

NS_ASSUME_NONNULL_END
