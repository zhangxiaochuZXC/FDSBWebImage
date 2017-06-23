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

/// 接受外界传入的图片的地址
@property (nonatomic, copy) NSString *URLString;
/// 接受外界传入的回调的代码块
@property (nonatomic, copy) void(^finishedBlock)(UIImage *image);

@end
