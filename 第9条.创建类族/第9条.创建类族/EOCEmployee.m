//
//  EOCEmployee.m
//  第9条.创建类族
//
//  Created by 陈泽嘉 on 16/1/15.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCEmployee.h"
#import "EOCEmployeeDeveloper.h"
#import "EOCEmployeeDesigner.h"
#import "EOCEmployeeFinance.h"

@implementation EOCEmployee

/*  将子类的实例的创建隐藏在基类的实现方法中 */

// 根据职员类型创建子类各自的实例
+ (EOCEmployee *)emplyeeWithType:(EOCEmployeeType)type{
    switch (type) {
        case EOCEmployeeTypeDeveloper:
            return [EOCEmployeeDeveloper new];
            break;
        case EOCEmployeeTypeDesigner:
            return [EOCEmployeeDesigner new];
            break;
        case EOCEmployeeTypeFinance:
            return [EOCEmployeeFinance new];
            break;
    }
}

- (void)doADaysWork{
    // 在子类的实现文件中各自实现其工作
}

@end
