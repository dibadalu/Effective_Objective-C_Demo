//
//  EOCNetworkFetcher.h
//  第23条.通过委托与数据源协议进行对象间通信
//
//  Created by 陈泽嘉 on 16/3/25.
//  Copyright © 2016年 dibadalu. All rights reserved.
//

#import <Foundation/Foundation.h>

@class EOCNetworkFetcher;
// 委托协议
@protocol EOCNetworkFetcherDelegate
@optional
- (void)networkFetcher:(EOCNetworkFetcher*)fetcher didReceiveData:(NSData*)data;
- (void)networkFetcher:(EOCNetworkFetcher*)fetcher didFailWithError:(NSError*)error;
- (void)networkFetcher:(EOCNetworkFetcher*)fetcher didUpdateProgressTo:(float)progress;
@end

@interface EOCNetworkFetcher : NSObject

@property(nonatomic ,weak) id<EOCNetworkFetcherDelegate> delegate; // 用来存放委托对象的属性

@end
