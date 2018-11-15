//
//  Observer.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/14.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Subject;
@protocol Observer <NSObject>

- (void)update:(id<Subject>) subject;

@end

NS_ASSUME_NONNULL_END
