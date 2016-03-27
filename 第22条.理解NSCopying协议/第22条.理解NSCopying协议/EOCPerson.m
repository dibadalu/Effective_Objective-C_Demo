//
//  EOCPerson.m
//  第22条.理解NSCopying协议
//
//  Created by 陈泽嘉 on 16/3/19.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCPerson.h"

@implementation EOCPerson{
    // 实例变量
    NSMutableSet *_friends;
}

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{
    if (self = [super init]) {
        _firstName = firstName;
        _lastName = lastName;
        _friends = [NSMutableSet new]; // 延迟初始化
    }
    return self;
}

- (void)addFriend:(EOCPerson *)person{
    [_friends addObject:person];
}

- (void)removeFriend:(EOCPerson *)person{
    [_friends removeObject:person];
}

// 要想该类能够实现拷贝操作必须实现copyWithZone:方法
- (id)copyWithZone:(NSZone *)zone{
    // 拷贝对象
    EOCPerson *copy = [[[self class] allocWithZone:zone]
                       initWithFirstName:_firstName
                       andLastName:_lastName];
    // 拷贝对象的实例变量
    copy->_friends = [_friends mutableCopy];
    return copy;
}

- (id)deepCopy{
    EOCPerson *copy = [[[self class] alloc]
                       initWithFirstName:_firstName
                       andLastName:_lastName];
    copy->_friends = [[NSMutableSet alloc] initWithSet:_friends copyItems:YES];
    return copy;
}

- (NSString *)description{
    return [NSString stringWithFormat:@"%@ %@", _firstName, _lastName];
}


@end
