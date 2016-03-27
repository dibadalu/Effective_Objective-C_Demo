//
//  main.m
//  第22条.理解NSCopying协议
//
//  Created by 陈泽嘉 on 16/3/19.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCPerson.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        EOCPerson *person = [[EOCPerson alloc] initWithFirstName:@"Bob" andLastName:@"Smith"];
        EOCPerson *person2 = [[EOCPerson alloc] initWithFirstName:@"Bill" andLastName:@"Jobs"];
        EOCPerson *person3 = [[EOCPerson alloc] initWithFirstName:@"Scot" andLastName:@"Hotway"];
        EOCPerson *person4 = [person copy];
        [person4 addFriend:person2];
        [person4 addFriend:person3];
        NSLog(@"person4 = %@",person4);
    }
    return 0;
}
