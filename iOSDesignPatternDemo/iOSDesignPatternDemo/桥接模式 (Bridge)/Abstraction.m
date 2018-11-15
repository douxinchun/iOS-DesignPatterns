//
//  Abstraction.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/2.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Abstraction.h"

@implementation Abstraction

- (instancetype)initWithImplementor:(id<Implementor> )imp {
    self = [super init];
    if (self) {
        _pImp = imp;
    }
    return self;
}

- (void)operation {
    
}

@end
