//
//  EOCAutoDictionary.m
//  第12条.演示动态方法解析
//
//  Created by 陈泽嘉 on 16/3/9.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCAutoDictionary.h"
#import <objc/runtime.h>

@interface EOCAutoDictionary ()
@property(nonatomic,strong) NSMutableDictionary *backingStore;
@end

@implementation EOCAutoDictionary

// @dynamic会阻止编译器自动生成相关的存取方法，而由开发者自己创建存取方法
@dynamic string, number, date, opaqueObject;

- (id)init{
    if (self = [super init]) {
        _backingStore = [NSMutableDictionary new]; // 延迟加载
    }
    return self;
}

// 动态添加新方法
+ (BOOL)resolveInstanceMethod:(SEL)sel{
    NSString *selectorString = NSStringFromSelector(sel);
    if ([selectorString hasPrefix:@"set"]) {
        class_addMethod(self,
                        sel,
                        (IMP)autoDictionarySetter,
                        "v@:@");
    }else{
        class_addMethod(self,
                        sel,
                        (IMP)autoDictionaryGetter,
                        "@@:");
    }
    return YES;
}

// getter函数
id autoDictionaryGetter(id self, SEL _cmd){
    // 从EOCAutoDictionary对象获取backingStore字典
    EOCAutoDictionary *typedSelf = (EOCAutoDictionary*)self;
    NSMutableDictionary *backingStore = typedSelf.backingStore;
    
    // 将选择器转换为字符串，并将其设为key
    NSString *key = NSStringFromSelector(_cmd);
    
    // 返回backingStore字典中key所对应的值
    return [backingStore objectForKey:key];
}

// setter函数
void autoDictionarySetter(id self, SEL _cmd, id value){
    // 从EOCAutoDictionary对象获取backingStore字典
    EOCAutoDictionary *typedSelf = (EOCAutoDictionary*)self;
    NSMutableDictionary *backingStore = typedSelf.backingStore;
    
    // 将选择器转换为字符串，并将其拷贝为可变字符串
    NSString *selectorString = NSStringFromSelector(_cmd);
    NSMutableString *key = [selectorString mutableCopy];
    
    // 移除key中尾部的“:”
    [key deleteCharactersInRange:NSMakeRange(key.length - 1, 1)];
    
    // 移除key中前面的“set”
    [key deleteCharactersInRange:NSMakeRange(0, 3)];
    
    // 取出现有的key中的首字母，将其小写化并替代掉原来的首字母
    NSString *lowercaseFirstChar = [[key substringToIndex:1] lowercaseString];
    [key replaceCharactersInRange:NSMakeRange(0, 1) withString:lowercaseFirstChar];
    
    // 根据key给backingStore存储相关的值
    if (value) {
        [backingStore setObject:value forKey:key];
    }else{
        [backingStore removeObjectForKey:key];
    }
    
}


@end
