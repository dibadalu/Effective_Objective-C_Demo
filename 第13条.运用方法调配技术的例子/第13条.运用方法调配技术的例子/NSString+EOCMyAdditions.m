//
//  NSString+EOCMyAdditions.m
//  第13条.运用方法调配技术的例子
//
//  Created by 陈泽嘉 on 16/3/9.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "NSString+EOCMyAdditions.h"

@implementation NSString (EOCMyAdditions)
// 新增一个方法，实现附加功能
- (NSString *)eoc_myLowercaseString{
    NSString *lowercase = [self eoc_myLowercaseString];
    NSLog(@"%@ => %@", self, lowercase);
    return lowercase;
}
@end
