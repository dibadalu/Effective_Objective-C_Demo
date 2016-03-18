//
//  EOCLocation.m
//  第17条：实现description
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCLocation.h"

@implementation EOCLocation

- (id)initWithTitle:(NSString *)title latitude:(float)latitude longitude:(float)longitude{
    if (self = [super init]) {
        _title = [title copy];
        _latitude = latitude;
        _longitude = longitude;
    }
    return self;
}

// 覆写description，且将属性信息包装到字典中
- (NSString *)description{
    return [NSString stringWithFormat:@"%@",
            @{@"title": _title,
              @"latitude": @(_latitude),
              @"longitude": @(_longitude)
              }
            ];
}

// 覆写debugDescription，且将属性信息包装到字典中，用于调试
- (NSString *)debugDescription{
    return [NSString stringWithFormat:@"<%@, %p, %@>",
            [self class],
            self,
            @{@"title": _title,
              @"latitude": @(_latitude),
              @"longitude": @(_longitude)
              }
            ];
}

@end
