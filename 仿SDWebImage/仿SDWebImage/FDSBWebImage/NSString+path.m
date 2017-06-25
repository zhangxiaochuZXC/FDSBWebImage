//
//  NSString+path.m
//  列表异步加载网络图片
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import "NSString+path.h"

@implementation NSString (path)

- (NSString *)appendCachePath {
    // cache文件夹路径
    NSString *cachePath = NSSearchPathForDirectoriesInDomains(NSCachesDirectory, NSUserDomainMask, YES).lastObject;
    // 获取文件缓存的名字 (哪个字符串对象调用该分类的对象方法,那么self就是哪个字符串对象)
    NSString *name = [self lastPathComponent];
    // cachePath和name拼接文件缓存的全路径
    NSString *filePath = [cachePath stringByAppendingPathComponent:name];
    
    return filePath;
}

@end
