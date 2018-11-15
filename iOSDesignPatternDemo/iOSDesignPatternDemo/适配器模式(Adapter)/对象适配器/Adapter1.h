//
//  Adapter1.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/1.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "AdapterProtocol.h"
#import "Adaptee.h"

NS_ASSUME_NONNULL_BEGIN

@interface Adapter1 : NSObject <AdapterProtocol>

@property(nonatomic, strong) Adaptee *adaptee;

@end

NS_ASSUME_NONNULL_END
