//
//  EOCDataModel.m
//  第23条.通过委托与数据源协议进行对象间通信
//
//  Created by 陈泽嘉 on 16/3/25.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import "EOCDataModel.h"
#import "EOCNetworkFetcher.h"

@interface EOCDataModel () <EOCNetworkFetcherDelegate>

@end

@implementation EOCDataModel

#pragma mark - EOCNetworkFetcherDelegate
- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didReceiveData:(NSData *)data
{
    /* handle data */
}

- (void)networkFetcher:(EOCNetworkFetcher *)fetcher didFailWithError:(NSError *)error
{
    /* handle error */
}

@end
