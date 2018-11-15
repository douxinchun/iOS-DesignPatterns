//
//  ConcreteFlyweight1.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/6.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "ConcreteFlyweight1.h"

@interface ConcreteFlyweight1 () {
    @private
    NSString *_intrinsicState;
}
@end

@implementation ConcreteFlyweight1
- (instancetype)init {
    self = [super init];
    if (self) {
        _intrinsicState = @"";
    }
    return self;
}

- (void)operation:(NSString *)extrinsicState {
    NSLog(@"concreteFlyweight %@", extrinsicState);
}


@end
