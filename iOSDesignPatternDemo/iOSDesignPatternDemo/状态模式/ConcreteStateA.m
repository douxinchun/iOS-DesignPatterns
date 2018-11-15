
//
//  ConcreteStateA.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteStateA.h"
#import "ConcreteStateB.h"
#import "Context.h"

@implementation ConcreteStateA

- (void)handle:(Context *)ctx {
    NSLog(@"stataA");
    NSLog(@"stateA change to state B");
    ConcreteStateB *stateB = [[ConcreteStateB alloc] init];
    [ctx changeState:stateB];
}

@end
