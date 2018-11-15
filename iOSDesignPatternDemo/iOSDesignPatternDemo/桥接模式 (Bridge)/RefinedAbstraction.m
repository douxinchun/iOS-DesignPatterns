//
//  RefinedAbstraction.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/2.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "RefinedAbstraction.h"
#import "ConcreteImplementorA.h"
#import "ConcreteImplementorB.h"

@implementation RefinedAbstraction

- (void)operation {
    NSLog(@"this is RefinedAbstraction with Imp");
    [self.pImp operationImp];
}

@end
