//
//  main.m
//  第16条.提供全能初始化方法
//
//  Created by 陈泽嘉 on 16/3/17.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCRectangle.h"
#import "EOCSquare.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EOCRectangle *rectangle = [[EOCRectangle alloc] init];
        NSLog(@"rectangle: width = %.1f, height = %.1f",rectangle.width, rectangle.height);
        
        EOCRectangle *rectangle2 = [[EOCRectangle alloc] initWithWidth:3.2 andHeight:4.6];
        NSLog(@"rectangle2: width = %.1f, height = %.1f",rectangle2.width, rectangle2.height);
        
        EOCSquare *square = [[EOCSquare alloc] init];
        NSLog(@"square: width = %.1f, height = %.1f",square.width, square.height);
        
        EOCSquare *square2 = [[EOCSquare alloc] initWithDimension:4.5];
        NSLog(@"square2: width = %.1f, height = %.1f",square2.width, square2.height);
    }
    return 0;
}
