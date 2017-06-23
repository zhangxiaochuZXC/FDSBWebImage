//
//  DownloadOperation.m
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import "DownloadOperation.h"

/*
 下载图片
 1.需要图片地址
 2.需要图片的回调的代码块
 */

@implementation DownloadOperation

/// 操作的入口方法 : 队列调用操作执行时先经过start方法的过滤,会进入该方法,默认在子线程异步执行的(队列调度操作执行后,才会执行main方法)
- (void)main {
    NSLog(@"传入 = %@",self.URLString);
    
    NSURL *URL = [NSURL URLWithString:_URLString];
    NSData *data = [NSData dataWithContentsOfURL:URL];
    UIImage *image = [UIImage imageWithData:data];
    
    // 图片下载结束,需要使用外界传入的代码块把图片回调给外界
    if (self.finishedBlock != nil) {
        
        // 回到主线程回调代码块 : 外界的代码块会默认在主线程执行(在哪个线程调用代理方法和发送通知,那么代理方法和通知方法就在哪个线程执行,类似于Block的回调)
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            self.finishedBlock(image);
        }];
    }
}

@end
