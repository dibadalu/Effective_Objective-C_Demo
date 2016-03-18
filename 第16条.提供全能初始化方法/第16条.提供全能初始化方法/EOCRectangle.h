//
//  EOCRectangle.h
//  第16条.提供全能初始化方法
//
//  Created by 陈泽嘉 on 16/3/17.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCRectangle : NSObject<NSCoding>
@property(nonatomic, assign, readonly) float width;
@property(nonatomic ,assign, readonly) float height;
- (id)initWithWidth:(float)width andHeight:(float)height;
@end
