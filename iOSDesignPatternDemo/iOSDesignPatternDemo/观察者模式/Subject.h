//
//  Subject.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Observer;
@protocol Subject <NSObject>

- (void)attach:(id<Observer>) observer;
- (void)detach:(id<Observer>) observer;
- (void)notify;

@required
@property(nonatomic, strong) NSMutableArray< id<Observer> > *observerList;

@end

NS_ASSUME_NONNULL_END
