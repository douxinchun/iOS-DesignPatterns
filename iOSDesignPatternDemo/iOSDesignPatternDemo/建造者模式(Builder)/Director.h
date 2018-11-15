//
//  Director.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Builder.h"

NS_ASSUME_NONNULL_BEGIN

@interface Director : NSObject

@property(nonatomic, strong) Builder *pbuilder;

/**
 生成最终的产品
 
 @return 最终产品为包含partA,partB,partC的dictionary
 */
- (NSDictionary *)construct;

@end

NS_ASSUME_NONNULL_END
