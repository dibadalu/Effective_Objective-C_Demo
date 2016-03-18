//
//  EOCLocation.h
//  第17条：实现description
//
//  Created by 陈泽嘉 on 16/3/18.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCLocation : NSObject

@property(nonatomic ,copy, readonly) NSString *title;
@property(nonatomic ,assign, readonly) float latitude;  // 纬度
@property(nonatomic ,assign, readonly) float longitude; // 经度
- (id)initWithTitle:(NSString *)title
           latitude:(float)latitude
          longitude:(float)longitude;
@end
