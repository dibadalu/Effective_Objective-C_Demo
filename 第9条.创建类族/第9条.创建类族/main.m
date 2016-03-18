//
//  main.m
//  第9条.创建类族
//
//  Created by 陈泽嘉 on 16/1/15.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCEmployee.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EOCEmployee *developer = [EOCEmployee emplyeeWithType:EOCEmployeeTypeDeveloper];
        NSLog(@"%@",[developer class]);// output EOCEmployeeDeveloper
        
        /*
         总结：
         通过EOCEmployee类的工厂方法创建出来的实例是EOCEmployee类的子类的实例
         */
    }
    return 0;
}
