//
//  SimpleFactory.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "SimpleFactory.h"
#import "SimpleProductA.h"
#import "SimpleProductB.h"

@implementation SimpleFactory

+ (id<SimpleProductProtocol> )createProduct:(NSString *)productName {
    if ([productName isEqualToString:kSimpleProductA]) {
        return [[SimpleProductA alloc] init];
    } else if ([productName isEqualToString:kSimpleProductB]) {
        return [[SimpleProductB alloc] init];
    } else {
        return nil;
    }
}

@end
