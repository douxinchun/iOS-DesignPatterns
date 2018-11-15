//
//  ConcreteMediator.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteMediator.h"
#import "Colleague.h"

@interface ConcreteMediator () {
    
}

@property(nonatomic, strong) NSMutableDictionary<NSString *, id<Colleague>> *dict;

@end

@implementation ConcreteMediator

- (void)operationWithDestation:(NSString *)dest message:(NSString *)msg {
    id<Colleague> item = self.dict[dest];
    if (item) {
        [item receive:msg];
    }
}

- (void)registerWithColleague:(id<Colleague>)colleague dest:(nonnull NSString *)dest{
    self.dict[dest] = colleague;
    colleague.mediator = self;
}

- (NSMutableDictionary *)dict {
    if (!_dict) {
        _dict = [[NSMutableDictionary alloc] initWithCapacity:10];
    }
    return _dict;
}

@end
