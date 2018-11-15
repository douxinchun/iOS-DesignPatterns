//
//  Proxy.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/8.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Proxy.h"
#import "RealSubject.h"

@interface Proxy () {
    
}

@property(nonatomic, strong) RealSubject *realSubject;

@end

@implementation Proxy

- (void)preReqeust {
    NSLog(@"preRequest");
}

- (void)afterRequest {
    NSLog(@"afterRequest");
}

- (void)request {
    [self preReqeust];
    [self.realSubject request];
    [self afterRequest];
}

- (RealSubject *)realSubject {
    if (!_realSubject) {
        _realSubject = [[RealSubject alloc] init];
    }
    return _realSubject;
}

@end
