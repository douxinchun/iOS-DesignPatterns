//
//  Decorator.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/5.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Decorator.h"
#import "ConcreteComponent.h"

@interface Decorator()

@property(nonatomic, strong) Component *component;

@end

@implementation Decorator

- (void)operation {
    [self.component operation];
}

- (Component *)component {
    if (!_component) {
        _component = [[ConcreteComponent alloc] init];
    }
    return _component;
}

@end
