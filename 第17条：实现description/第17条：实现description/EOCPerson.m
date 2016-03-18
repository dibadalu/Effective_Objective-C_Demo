//
//  EOCPerson.m
//  第17条：实现description
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson
- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{
    if (self = [super init]) {
        _firstName = [firstName copy];
        _lastName = [lastName copy];
    }
    return self;
}

// 覆写description方法
- (NSString *)description{
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}

// 覆写debugDescription方法，用于调试
- (NSString *)debugDescription{
    return [NSString stringWithFormat:@"<%@: %p, \"%@ %@\">", [self class], self, _firstName, _lastName];
}
@end
