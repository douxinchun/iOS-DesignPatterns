//
//  Abstraction.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/2.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Implementor.h"

NS_ASSUME_NONNULL_BEGIN

@interface Abstraction : NSObject

@property(nonatomic, strong) id<Implementor> pImp;

- (instancetype)initWithImplementor:(id<Implementor> ) imp;
- (void)operation;

@end

NS_ASSUME_NONNULL_END
