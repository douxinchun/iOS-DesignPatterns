//
//  ConcreteCommand.h
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/13.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Receiver.h"
#import "Command.h"

NS_ASSUME_NONNULL_BEGIN

@interface ConcreteCommand : NSObject <Command>

- (instancetype)initWithReceiver:(Receiver *)receiver;

@end

NS_ASSUME_NONNULL_END
