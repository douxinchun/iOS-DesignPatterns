//
//  ConcreteColleagueA.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteColleagueA.h"

@implementation ConcreteColleagueA

@synthesize mediator;

- (void)receive:(NSString *)msg {
    NSLog(@"A receive message: %@",msg);
}

- (void)send:(NSString *)message to:(NSString *)who {
    NSLog(@"A send message %@", who);
    [self.mediator operationWithDestation:who message:message];
}

@end
