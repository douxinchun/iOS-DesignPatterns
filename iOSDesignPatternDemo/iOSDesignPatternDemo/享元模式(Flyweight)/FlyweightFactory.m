//
//  FlyweightFactory.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/11/7.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "FlyweightFactory.h"
#import "ConcreteFlyweight1.h"
#import "ConcreteFlyweight2.h"

@interface FlyweightFactory() {
    
}

@property(nonatomic, strong) NSMutableDictionary<NSString *, id <Flyweight>> *flyWeightPool;

@end

@implementation FlyweightFactory

- (id<Flyweight>)flyWeightWithString:(NSString *)str {
    if (self.flyWeightPool[str]) {
        NSLog(@"flyweightPool中查找到 %@ 的flyweight",str);
        return self.flyWeightPool[str];
    }
    if ([str isEqualToString:@"one"]) {
        NSLog(@"未找到 %@ 的flyweight, 新建一个",str);
        self.flyWeightPool[str] = [[ConcreteFlyweight1 alloc] init];
        return self.flyWeightPool[str];
    }else if ([str isEqualToString:@"two"]) {
        NSLog(@"未找到 %@ 的flyweight, 新建一个",str);
        self.flyWeightPool[str] = [[ConcreteFlyweight2 alloc] init];
        return self.flyWeightPool[str];
    }
    return nil;
}

- (NSMutableDictionary<NSString *,id<Flyweight>> *)flyWeightPool {
    if (!_flyWeightPool) {
        _flyWeightPool = [NSMutableDictionary<NSString *, id <Flyweight>> dictionaryWithCapacity:10];
    }
    return _flyWeightPool;
}

@end
