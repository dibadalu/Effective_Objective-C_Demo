//
//  EOCPerson.h
//  第24条.将类的实现代码分散到便于管理的数个分类之中
//
//  Created by 陈泽嘉 on 16/3/26.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject
@property(nonatomic ,copy, readonly) NSString *firstName;
@property(nonatomic ,copy, readonly) NSString *lastName;
@property(nonatomic ,strong, readonly) NSArray *friends;

- (id)initWithFirstName:(NSString*)firstName andLastName:(NSString*)lastName;

@end

