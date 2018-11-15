//
//  Command.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/8.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@protocol Command <NSObject>

- (void)execute;

@end

NS_ASSUME_NONNULL_END
