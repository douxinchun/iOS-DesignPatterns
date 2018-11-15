//
//  ConcreteFactoryA.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteFactoryA.h"
#import "ConceteProductA.h"

@implementation ConcreteFactoryA

+ (id<ProductProtocol>)factoryMethod {
    return [[ConceteProductA alloc] init];
}

@end
