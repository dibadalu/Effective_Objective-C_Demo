//
//  main.m
//  第17条：实现description
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "EOCPerson.h"
#import "EOCLocation.h"

int main(int argc, const char * argv[]) {
    @autoreleasepool {
        
        EOCPerson *person = [[EOCPerson alloc] initWithFirstName:@"Bob" andLastName:@"Smith"];
        NSLog(@"person = %@", person);
        
        EOCLocation *location = [[EOCLocation alloc] initWithTitle:@"London" latitude:51.506 longitude:0];
        NSLog(@"location = %@", location);
        
    }
    return 0;
}
