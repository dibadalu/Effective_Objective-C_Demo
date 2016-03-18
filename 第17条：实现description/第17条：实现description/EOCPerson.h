//
//  EOCPerson.h
//  第17条：实现description
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCPerson : NSObject

@property(nonatomic ,copy, readonly) NSString *firstName;
@property(nonatomic ,copy, readonly) NSString *lastName;
- (id)initWithFirstName:(NSString *)firstName andLastName:(NSString *)lastName;
@end
