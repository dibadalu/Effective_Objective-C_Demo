//
//  EOCSquare.m
//  第16条.提供全能初始化方法
//
//  Created by 陈泽嘉 on 16/3/17.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCSquare.h"

@implementation EOCSquare

// 子类的全能初始化方法
- (id)initWithDimension:(float)dimension{
    // 调用父类的全能初始化方法
    return [super initWithWidth:dimension andHeight:dimension];
}

// 覆写父类的全能初始化方法，防止出现长和宽不等的正方形
- (id)initWithWidth:(float)width andHeight:(float)height{
    float dimension = MAX(width, height);
    return [self initWithDimension:dimension];
}

// 解码
- (id)initWithCoder:(NSCoder *)decoder{
    if (self = [super initWithCoder:decoder]) {// 先调用父类的initWithCoder:方法
        // 该类新的属性
    }
    return self;
}

@end
