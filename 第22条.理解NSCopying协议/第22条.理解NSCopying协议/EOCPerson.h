//
//  EOCPerson.h
//  第22条.理解NSCopying协议
//
//  Created by 陈泽嘉 on 16/3/19.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject<NSCopying>  // 遵守NSCopying协议
@property(nonatomic ,copy, readonly) NSString *firstName;
@property(nonatomic ,copy, readonly) NSString *lastName;

- (id)initWithFirstName:(NSString *)firstName
            andLastName:(NSString *)lastName;
- (void)addFriend:(EOCPerson *)person;
- (void)removeFriend:(EOCPerson *)person;
// 专供深拷贝所用的方法
- (id)deepCopy;

@end
