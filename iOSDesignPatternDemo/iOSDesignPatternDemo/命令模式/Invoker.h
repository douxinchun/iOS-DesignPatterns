//
//  Invoker.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/8.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface Invoker : NSObject

- (instancetype)initWithCommand:(id<Command>)cmd;

- (void)call;

@end

NS_ASSUME_NONNULL_END
