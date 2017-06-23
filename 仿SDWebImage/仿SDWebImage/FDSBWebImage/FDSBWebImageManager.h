//
//  FDSBWebImageManager.h
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "DownloadOperation.h"

@interface FDSBWebImageManager : NSObject

+ (instancetype)sharedManager;

/**
 单例下载主方法

 @param URLString 图片地址
 @param completionBlock 下载完成的回调
 */
- (void)downloadImageWithURLString:(NSString *)URLString completion:(void(^)(UIImage *image))completionBlock;

- (void)cancelLastOperation:(NSString *)lastURLString;

@end
