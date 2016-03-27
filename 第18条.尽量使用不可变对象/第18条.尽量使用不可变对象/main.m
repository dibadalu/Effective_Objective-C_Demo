//
//  main.m
//  第18条.尽量使用不可变对象
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        // 1.创建3个EOCPerson对象
        EOCPerson *person = [[EOCPerson alloc] initWithFirstName:@"Bob" andLastName:@"Simth"];
        NSLog(@"person = %@ %@", person.firstName, person.lastName);
        
        EOCPerson *person2 = [[EOCPerson alloc] initWithFirstName:@"Bill" andLastName:@"Jobs"];
        NSLog(@"person2 = %@ %@", person2.firstName, person2.lastName);
        
        EOCPerson *person3 = [[EOCPerson alloc] initWithFirstName:@"Jane" andLastName:@"Galloway"];
        NSLog(@"person3 = %@ %@", person3.firstName, person3.lastName);
        
        // 2.通过addFriend:方法给person添加2个朋友（person2&person3）
        [person addFriend:person2];
        [person addFriend:person3];
        NSLog(@"the friends of person = %@", person.friends);
        
    }
    return 0;
}
