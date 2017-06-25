//
//  NSString+path.h
//  列表异步加载网络图片
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import <Foundation/Foundation.h>

// 专门获取各种文件路径的
@interface NSString (path)

/// 获取cache文件夹内部文件的全路径
- (NSString *)appendCachePath;

@end
