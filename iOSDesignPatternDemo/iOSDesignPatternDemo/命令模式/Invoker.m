//
//  Invoker.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/8.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Invoker.h"

@interface Invoker () {
    id<Command> _command;
    
}


@end

@implementation Invoker

- (instancetype)initWithCommand:(id<Command>)cmd {
    self = [super init];
    if (self) {
        _command = cmd;
    }
    return self;
}


- (void)call{
    [_command execute];
}


@end
