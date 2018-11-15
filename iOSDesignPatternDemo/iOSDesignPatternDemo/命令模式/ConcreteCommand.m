//
//  ConcreteCommand.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteCommand.h"

@interface ConcreteCommand () {
    Receiver *_receiver;
}

@end

@implementation ConcreteCommand

- (instancetype)initWithReceiver:(Receiver *)receiver {
    self = [super init];
    if (self) {
        _receiver = receiver;
    }
    return self;
}

- (void)execute {
    NSLog(@"%@",_receiver);
    [_receiver action];
}

@end
