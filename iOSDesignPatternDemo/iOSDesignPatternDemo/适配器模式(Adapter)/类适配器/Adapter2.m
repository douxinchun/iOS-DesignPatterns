//
//  Adapter2.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/1.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Adapter2.h"

@implementation Adapter2

- (NSDate *)request {
    return [NSDate dateWithTimeIntervalSince1970:[self specificRequest]];
}

@end
