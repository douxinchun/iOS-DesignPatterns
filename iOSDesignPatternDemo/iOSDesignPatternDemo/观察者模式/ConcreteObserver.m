//
//  ConcreteObserver.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteObserver.h"
#import "ConcreteSubject.h"

@implementation ConcreteObserver

- (void)update:(id<Subject>)subject {
    ConcreteSubject *cSubject = (ConcreteSubject *)subject;
    NSLog(@"observer, subject number value change to:%@", cSubject.number);
}

@end
