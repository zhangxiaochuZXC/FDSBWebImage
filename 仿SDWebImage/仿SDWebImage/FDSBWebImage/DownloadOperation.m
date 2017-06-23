//
//  DownloadOperation.m
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import "DownloadOperation.h"

@implementation DownloadOperation

/// 操作的入口方法 : 队列调用操作执行时先经过start方法的过滤,会进入该方法,默认在子线程异步执行的(队列调度操作执行后,才会执行main方法)
- (void)main {
    NSLog(@"main = %@",[NSThread currentThread]);
}

@end
