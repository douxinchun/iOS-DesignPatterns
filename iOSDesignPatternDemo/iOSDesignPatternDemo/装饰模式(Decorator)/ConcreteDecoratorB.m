//
//  ConcreteDecoratorB.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/5.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteDecoratorB.h"

@implementation ConcreteDecoratorB

- (void)addBehaviorB {
    NSLog(@"this is behavior B");
}

- (void)operation {
    [super operation];
    [self addBehaviorB];
}

@end
