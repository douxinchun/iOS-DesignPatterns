//
//  Colleague.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Mediator.h"

NS_ASSUME_NONNULL_BEGIN

@protocol Colleague <NSObject>

- (void)receive:(NSString *)msg;
- (void)send:(NSString *)message to:(NSString *)who;

@required
@property(nonatomic, strong) id<Mediator> mediator;

@end

NS_ASSUME_NONNULL_END
