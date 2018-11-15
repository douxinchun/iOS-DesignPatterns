//
//  ConcreteFactory1.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteFactory1.h"
#import "ProductA1.h"
#import "ProductB1.h"

@implementation ConcreteFactory1

+ (id<AbstractProductA> )createProductA {
    return [[ProductA1 alloc] init];
}

+ (id<AbstractProductB> )createProductB {
    return [[ProductB1 alloc] init];
}

@end
