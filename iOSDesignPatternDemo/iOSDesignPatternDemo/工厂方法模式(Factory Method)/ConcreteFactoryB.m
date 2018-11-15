//
//  ConcreteFactoryB.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteFactoryB.h"
#import "ConcreteProductB.h"

@implementation ConcreteFactoryB

+ (id<ProductProtocol>)factoryMethod {
    return [[ConcreteProductB alloc] init];
}

@end
