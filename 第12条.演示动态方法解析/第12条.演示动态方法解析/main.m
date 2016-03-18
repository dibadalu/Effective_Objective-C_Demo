//
//  main.m
//  第12条.演示动态方法解析
//
//  Created by 陈泽嘉 on 16/3/9.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCAutoDictionary.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        EOCAutoDictionary *autoDict = [EOCAutoDictionary new];
        // autoDict.date == [autoDict setDate]
        // 由于接收者没有相应的方法可调用，因为@dynamic特性，所以可以动态新增方法
        autoDict.date = [NSDate dateWithTimeIntervalSince1970:3140907998];
        NSLog(@"%@",autoDict.date);
    }
    return 0;
}
