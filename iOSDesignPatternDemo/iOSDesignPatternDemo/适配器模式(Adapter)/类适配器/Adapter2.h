//
//  Adapter2.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/1.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Adaptee.h"
#import "AdapterProtocol.h"

NS_ASSUME_NONNULL_BEGIN

@interface Adapter2 : Adaptee <AdapterProtocol>



@end

NS_ASSUME_NONNULL_END
