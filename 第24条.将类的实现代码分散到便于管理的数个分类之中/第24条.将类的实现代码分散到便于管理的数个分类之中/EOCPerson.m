//
//  EOCPerson.m
//  第24条.将类的实现代码分散到便于管理的数个分类之中
//
//  Created by 陈泽嘉 on 16/3/26.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName
{
    if (self = [super init]) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    return self;
}

@end
