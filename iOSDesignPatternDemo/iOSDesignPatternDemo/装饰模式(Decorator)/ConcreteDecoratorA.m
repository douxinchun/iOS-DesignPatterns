//
//  ConcreteDecoratorA.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/5.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteDecoratorA.h"

@implementation ConcreteDecoratorA

- (void)addBehaviorA {
    NSLog(@"this is behavior A");
}

- (void)operation {
    [super operation];
    [self addBehaviorA];
}

@end
