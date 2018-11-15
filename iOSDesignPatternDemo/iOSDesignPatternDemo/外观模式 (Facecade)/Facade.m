//
//  Facade.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/2.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Facade.h"
#import "SubSystemA.h"
#import "SubSystemB.h"
#import "SubSystemC.h"

@interface Facade() {
    
}

@property(nonatomic, strong) SubSystemA *subSystemA;
@property(nonatomic, strong) SubSystemB *subSystemB;
@property(nonatomic, strong) SubSystemC *subSystemC;

@end

@implementation Facade

- (void)wrapOperation {
    [self.subSystemA operationA];
    [self.subSystemB operationB];
    [self.subSystemC operationC];
}

- (SubSystemA *)subSystemA {
    if (!_subSystemA) {
        _subSystemA = [[SubSystemA alloc] init];
    }
    return _subSystemA;
}

- (SubSystemB *)subSystemB {
    if (!_subSystemB) {
        _subSystemB = [[SubSystemB alloc] init];
    }
    return _subSystemB;
}

- (SubSystemC *)subSystemC {
    if (!_subSystemC) {
        _subSystemC = [[SubSystemC alloc] init];
    }
    return _subSystemC;
}
@end
