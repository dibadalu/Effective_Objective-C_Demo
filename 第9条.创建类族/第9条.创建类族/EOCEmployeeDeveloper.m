//
//  EOCEmployeeDeveloper.m
//  第9条.创建类族
//
//  Created by 陈泽嘉 on 16/1/15.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCEmployeeDeveloper.h"

@implementation EOCEmployeeDeveloper

- (void)doADaysWork{
    // 子类其工作的实现细节
    [self writeCode];
}

- (void)writeCode{
    NSLog(@"writeCode");
}

@end
