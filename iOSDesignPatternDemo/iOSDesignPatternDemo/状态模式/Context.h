//
//  Context.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "State.h"

NS_ASSUME_NONNULL_BEGIN

@interface Context : NSObject

- (void)changeState:(id<State>) state;
- (void)request;

@property(nonatomic, strong) id<State> currentState;

@end

NS_ASSUME_NONNULL_END
