//
//  DownloadOperation.h
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface DownloadOperation : NSOperation

/**
 创建操作和下载图片的主方法

 @param URLString 图片地址
 @param finishedBlock 下载完成的回调
 @return 自定义的下载操作
 */
+ (instancetype)downloadOperationWithURLString:(NSString *)URLString finished:(void(^)(UIImage *image))finishedBlock;

@end
