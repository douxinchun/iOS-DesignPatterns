//
//  Director.m
//  iOSDesignPatternDemo
//
//  Created by xinchundou on 2018/10/31.
//  Copyright © 2018年 Sping. All rights reserved.
//

#import "Director.h"

@implementation Director

- (NSDictionary *)construct {
    NSMutableDictionary *product = [NSMutableDictionary dictionaryWithCapacity:10];
    [product setValue:self.pbuilder.partA forKey:@"partA"];
    [product setValue:self.pbuilder.partB forKey:@"partB"];
    [product setValue:self.pbuilder.partC forKey:@"partC"];
    
    return product;
}

@end
