//
//  EOCPerson.h
//  第18条.尽量使用不可变对象
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property(nonatomic ,copy, readonly) NSString *firstName;
@property(nonatomic ,copy, readonly) NSString *lastName;
@property(nonatomic ,strong, readonly) NSSet *friends; // 不可变set
- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
- (void)addFriend:(EOCPerson *)person;
- (void)removeFriend:(EOCPerson *)person;
@end
