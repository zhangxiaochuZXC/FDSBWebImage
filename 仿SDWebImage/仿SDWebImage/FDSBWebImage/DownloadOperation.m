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

@interface DownloadOperation ()

/// 接受外界传入的图片的地址
@property (nonatomic, copy) NSString *URLString;
/// 接受外界传入的回调的代码块
@property (nonatomic, copy) void(^finishedBlock)(UIImage *image);

@end

@implementation DownloadOperation

+ (instancetype)downloadOperationWithURLString:(NSString *)URLString finished:(void (^)(UIImage *))finishedBlock {
    
    DownloadOperation *op = [DownloadOperation new];
    
    // 记录全局的图片地址
    op.URLString = URLString;
    // 记录全局的回调的代码块
    op.finishedBlock = finishedBlock;
    
    return op;
}

/// 操作的入口方法 : 队列调用操作执行时先经过start方法的过滤,会进入该方法,默认在子线程异步执行的(队列调度操作执行后,才会执行main方法)
- (void)main {
    NSLog(@"传入 = %@",self.URLString);
    
    NSURL *URL = [NSURL URLWithString:_URLString];
    NSData *data = [NSData dataWithContentsOfURL:URL];
    UIImage *image = [UIImage imageWithData:data];
    
    // 模拟网络延迟
    [NSThread sleepForTimeInterval:1.0];
    
    // 在操作执行的过程中拦截到操作是否被取消了
    if (self.isCancelled == YES) {
        NSLog(@"取消 = %@",self.URLString);
        return;
    }
    
    // 图片下载结束,需要使用外界传入的代码块把图片回调给外界
    if (self.finishedBlock != nil) {
        // 回到主线程回调代码块 : 外界的代码块会默认在主线程执行(在哪个线程调用代理方法和发送通知,那么代理方法和通知方法就在哪个线程执行,类似于Block的回调)
        [[NSOperationQueue mainQueue] addOperationWithBlock:^{
            NSLog(@"完成 = %@",self.URLString);
            // 把拿到的图片回调给单例
            self.finishedBlock(image);
        }];
    }
}

@end
