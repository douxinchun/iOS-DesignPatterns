//
//  SimpleFactory.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "SimpleProductProtocol.h"

NS_ASSUME_NONNULL_BEGIN

static NSString *const kSimpleProductA = @"simpleProductA";
static NSString *const kSimpleProductB = @"simpleProductB";

@interface SimpleFactory : NSObject

+ (id<SimpleProductProtocol> )createProduct:(NSString *)productName;

@end

NS_ASSUME_NONNULL_END
