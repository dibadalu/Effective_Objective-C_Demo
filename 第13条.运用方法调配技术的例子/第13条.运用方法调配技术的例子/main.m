//
//  main.m
//  第13条.运用方法调配技术的例子
//
//  Created by 陈泽嘉 on 16/3/9.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <objc/runtime.h>
#import "NSString+EOCMyAdditions.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1.交换方法
        Method originalMethod = class_getInstanceMethod([NSString class], @selector(lowercaseString));
        Method swappedMethod = class_getInstanceMethod([NSString class], @selector(eoc_myLowercaseString));
        // 2.交换方法
        method_exchangeImplementations(originalMethod, swappedMethod);
        
        // 3.调用lowercaseString方法，但实现的功能却是分类中新增方法的附加功能
        NSString *string = @"THIs is tHe StRiNg";
        NSString *lowercaseString = [string lowercaseString];
        
    }
    return 0;
}
