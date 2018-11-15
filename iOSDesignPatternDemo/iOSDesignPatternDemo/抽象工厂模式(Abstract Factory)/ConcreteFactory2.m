//
//  ConcreteFactory2.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteFactory2.h"
#import "ProductA2.h"
#import "ProductB2.h"

@implementation ConcreteFactory2

+ (id<AbstractProductA> )createProductA {
    return [[ProductA2 alloc] init];
}

+ (id<AbstractProductB> )createProductB {
    return [[ProductB2 alloc] init];
}

@end
