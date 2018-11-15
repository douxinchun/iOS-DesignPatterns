//
//  ConcreteColleagueB.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteColleagueB.h"

@implementation ConcreteColleagueB
@synthesize mediator;

- (void)receive:(NSString *)msg {
    NSLog(@"B receive message: %@", msg);
}

- (void)send:(NSString *)message to:(NSString *)who {
     NSLog(@"B send message %@", who);
    [self.mediator operationWithDestation:who message:message];
}


@end
