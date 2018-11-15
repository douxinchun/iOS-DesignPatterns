//
//  Builder.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AbstractPartAProtocol.h"
#import "AbstractPartBProtocol.h"
#import "AbstractPartCProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Builder : NSObject

@property(nonatomic, strong) id<AbstractPartAProtocol> partA;
@property(nonatomic, strong) id<AbstractPartBProtocol> partB;
@property(nonatomic, strong) id<AbstractPartCProtocol> partC;

- (void)product;

@end

NS_ASSUME_NONNULL_END
