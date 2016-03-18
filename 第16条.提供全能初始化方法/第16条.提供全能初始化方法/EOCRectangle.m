//
//  EOCRectangle.m
//  第16条.提供全能初始化方法
//
//  Created by 陈泽嘉 on 16/3/17.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCRectangle.h"

@implementation EOCRectangle

// 全能初始化方法
- (id)initWithWidth:(float)width andHeight:(float)height{
    if (self = [super init]) { // 先调用NSObject类的init方法
        _width = width;
        _height = height;
    }
    return self;
}

// 覆写NSObject类的init方法，指定默认的值
- (id)init{
    return [self initWithWidth:5.0f andHeight:10.0f];
}

// 对属性解码，存放到实例变量中
- (id)initWithCoder:(NSCoder *)decoder{
    if (self = [super init]) { // 先调用NSObject类的init方法
        _width = [decoder decodeFloatForKey:@"width"];
        _height = [decoder decodeFloatForKey:@"height"];
    }
    return self;
}

// 编码
- (void)encodeWithCoder:(NSCoder *)coder{
    [coder encodeFloat:_width forKey:@"width"];
    [coder encodeFloat:_height forKey:@"height"];
}

@end
