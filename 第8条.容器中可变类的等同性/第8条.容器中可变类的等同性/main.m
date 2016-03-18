//
//  main.m
//  第8条.容器中可变类的等同性
//
//  Created by 陈泽嘉 on 16/1/15.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        // 将一个可变数组A加入set
        NSLog(@"将一个可变数组A[@1, @2]加入set");
        NSMutableSet *set = [NSMutableSet new];
        NSMutableArray *arrayA = [@[@1,@2] mutableCopy];
        [set addObject:arrayA];
        NSLog(@"set = %@",set);
        
        // 将一个可变数组B加入set
        NSLog(@"将一个可变数组B[@1, @2]加入set");
        NSMutableArray *arrayB = [@[@1,@2] mutableCopy];
        [set addObject:arrayB];
        NSLog(@"set = %@",set);
        
        // 将一个可变数组C加入set
        NSLog(@"将一个可变数组C[@1]加入set");
        NSMutableArray *arrayC = [@[@1] mutableCopy];
        [set addObject:arrayC];
        NSLog(@"set = %@",set);

        // 向一个可变数组C追加@2
        NSLog(@"向一个可变数组C追加@2");
        [arrayC addObject:@2];
        NSLog(@"set = %@",set);

        // 拷贝set，创建了setB
        NSLog(@"拷贝set，创建了setB");
        NSSet *setB = [set copy];
        NSLog(@"setB = %@",setB);

    }
    return 0;
}
