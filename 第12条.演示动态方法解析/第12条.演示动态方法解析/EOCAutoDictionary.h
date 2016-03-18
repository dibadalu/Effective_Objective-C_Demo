//
//  EOCAutoDictionary.h
//  第12条.演示动态方法解析
//
//  Created by 陈泽嘉 on 16/3/9.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface EOCAutoDictionary : NSObject

@property(nonatomic,strong) NSString *string;
@property(nonatomic,strong) NSNumber *number;
@property(nonatomic,strong) NSDate *date;
@property(nonatomic,strong) id opaqueObject;

@end
