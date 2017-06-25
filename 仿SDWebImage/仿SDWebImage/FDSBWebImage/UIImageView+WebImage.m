//
//  UIImageView+WebImage.m
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/25.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import "UIImageView+WebImage.h"
#import <objc/runtime.h>

@implementation UIImageView (WebImage)

- (void)setLastURLString:(NSString *)lastURLString {
    
    // 关联对象 : 能够使分类的属性可以存存值
    /*
     1.要关联的对象
     2.要关联的对象的属性的key
     3.要关联的对象的属性的值
     4.要关联的对象的属性的存储的策略
     */
    objc_setAssociatedObject(self, "key", lastURLString, OBJC_ASSOCIATION_COPY_NONATOMIC);
}

- (NSString *)lastURLString {
    /*
     1.要关联的对象
     2.要关联的对象的属性的key
     */
    return objc_getAssociatedObject(self, "key");
}

- (void)fdsb_setImageWithURLString:(NSString *)URLString {
    // 在建立下载操作前,判断连续传入的图片地址是否一样,如果不一样,就把前一个下载操作取消掉
    if (![URLString isEqualToString:self.lastURLString] && self.lastURLString != nil) {
        
        // 单例接管取消操作
        [[FDSBWebImageManager sharedManager] cancelLastOperation:self.lastURLString];
    }
    
    // 记录上次图片地址
    self.lastURLString = URLString;
    
    // 单例接管下载操作
    [[FDSBWebImageManager sharedManager] downloadImageWithURLString:URLString completion:^(UIImage *image) {
        self.image = image;
    }];
}

@end
