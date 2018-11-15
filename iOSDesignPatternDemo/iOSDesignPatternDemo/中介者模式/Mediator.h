//
//  Mediator.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
//#import "Colleague.h"
@protocol Colleague;

NS_ASSUME_NONNULL_BEGIN

@protocol Mediator <NSObject>

- (void)operationWithDestation:(NSString *)dest message:(NSString *)msg;
- (void)registerWithColleague:(id<Colleague>) colleague dest:(NSString *)dest;

@end

NS_ASSUME_NONNULL_END
