//
//  Singleton.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

+ (Singleton  *)sharedInstance {
    static id _sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        _sharedInstance = [[Singleton alloc] init];
    });
    
    return _sharedInstance;
}

@end
