//
//  Adapter1.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/1.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Adapter1.h"

@implementation Adapter1

- (NSDate *)request {
    NSInteger time = [self.adaptee specificRequest];
    return [NSDate dateWithTimeIntervalSince1970:time];
}

- (Adaptee *)adaptee {
    if (!_adaptee) {
        _adaptee = [[Adaptee alloc] init];
    }
    return _adaptee;
}

@end
