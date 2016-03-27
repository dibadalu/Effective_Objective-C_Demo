//
//  EOCPerson.m
//  第18条.尽量使用不可变对象
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCPerson.h"

@interface EOCPerson ()
// 改为readwrite属性
@property(nonatomic ,copy, readwrite) NSString *firstName;
@property(nonatomic ,copy, readwrite) NSString *lastName;

@end

@implementation EOCPerson
{// 实例变量
    NSMutableSet *_internalFriends; // 可变set
}

- (NSSet *)friends{
    return [_internalFriends copy]; // 拷贝一份不可变的set
}

- (void)addFriend:(EOCPerson *)person{
    [_internalFriends addObject:person];
}

- (void)removeFriend:(EOCPerson *)person{
    [_internalFriends removeObject:person];
}

- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName{
    if (self = [super init]) {
#warning 不需要再copy一份
        _firstName = firstName;
        _lastName = lastName;
        _internalFriends = [NSMutableSet new]; // 延迟初始化
    }
    return self;
}

// 覆写description方法
- (NSString *)description{
    return [NSString stringWithFormat:@"%@ %@", self.firstName, self.lastName];
}
@end
