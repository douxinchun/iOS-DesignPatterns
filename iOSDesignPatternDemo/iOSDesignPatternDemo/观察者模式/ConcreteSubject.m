//
//  ConcreteSubject.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteSubject.h"
#import "Observer.h"

@implementation ConcreteSubject
@synthesize observerList;

- (instancetype)init {
    self = [super init];
    if (self) {
        self.observerList = [@[] mutableCopy];
    }
    return self;
}

- (void)attach:(id<Observer>)observer {
    [self.observerList addObject:observer];
}

- (void)detach:(id<Observer>)observer {
    [self.observerList removeObject:observer];
}

- (void)notify {
    for (id<Observer> item in self.observerList) {
        [item update:self];
    }
}

- (void)setNumber:(NSNumber *)number {
    if (_number!=number) {
        _number = number;
        [self notify];
    }
}


@end
