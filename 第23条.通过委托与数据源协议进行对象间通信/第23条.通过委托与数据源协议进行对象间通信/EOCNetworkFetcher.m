//
//  EOCNetworkFetcher.m
//  第23条.通过委托与数据源协议进行对象间通信
//
//  Created by 陈泽嘉 on 16/3/25.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCNetworkFetcher.h"

@interface EOCNetworkFetcher (){
    struct { // 含有位段的结构体，用来缓存“委托对象是否能响应相应协议方法”这一信息
        unsigned int didReceiveData      : 1;
        unsigned int didFailWithError    : 1;
        unsigned int didUpdateProgressTo : 1;
    }_delegateFlags;
}
@end

@implementation EOCNetworkFetcher

- (void)setDelegate:(id<EOCNetworkFetcherDelegate>)delegate
{
    _delegate = delegate;
    _delegateFlags.didReceiveData = [_delegate respondsToSelector:@selector(networkFetcher:didReceiveData:)];
    _delegateFlags.didFailWithError = [_delegate respondsToSelector:@selector(networkFetcher:didFailWithError:)];
    _delegateFlags.didUpdateProgressTo = [_delegate respondsToSelector:@selector(networkFetcher:didUpdateProgressTo:)];
}

- (void)actionMethod
{
    NSData *data = /* data obtained from network */;
    if (_delegateFlags.didReceiveData) {
        [_delegate networkFetcher:self didReceiveData:data];
    }
}

@end
