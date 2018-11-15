//
//  Context.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Context.h"
#import "ConcreteStateA.h"

@implementation Context

- (instancetype)init {
    self = [super init];
    if (self) {
        _currentState = [[ConcreteStateA alloc] init];
    }
    return self;
}

- (void)changeState:(id<State>)state {
    self.currentState = state;
}

- (void)request {
    [self.currentState handle:self];
}

@end
