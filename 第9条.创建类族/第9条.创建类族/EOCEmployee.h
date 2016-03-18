//
//  EOCEmployee.h
//  第9条.创建类族
//
//  Created by 陈泽嘉 on 16/1/15.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

// 职员的类型
typedef NS_ENUM(NSUInteger,EOCEmployeeType) {
    EOCEmployeeTypeDeveloper,
    EOCEmployeeTypeDesigner,
    EOCEmployeeTypeFinance,
};

@interface EOCEmployee : NSObject
/** 名字 */
@property(nonatomic,copy) NSString *name;
/** 薪水 */
@property(nonatomic,assign) NSUInteger salary;

// 工厂方法（类方法）：创建雇员对象
+ (EOCEmployee *)emplyeeWithType:(EOCEmployeeType)type;

// 职员干自己的工作
- (void)doADaysWork;

@end
