//
//  ConcreteStateB.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteStateB.h"
#import "ConcreteStateA.h"
#import "Context.h"
#import <objc/runtime.h>

@implementation ConcreteStateB

- (void)handle:(Context *)ctx {
    NSLog(@"stataB");
    NSLog(@"stateB change to state A");
    ConcreteStateA *stateA = [[ConcreteStateA alloc] init];
    [ctx changeState:stateA];
}

@end
