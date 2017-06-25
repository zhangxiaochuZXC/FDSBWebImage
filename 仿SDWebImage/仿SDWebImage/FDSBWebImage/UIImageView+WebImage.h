//
//  UIImageView+WebImage.h
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/25.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FDSBWebImageManager.h"

/*
 1.分类可以拓展方法
 2.分类可以定义属性.(但是,系统不会自动实现setter和getter方法)
 3.分类不能拓展带下划线的成员变量,因为分类的结构体里面没有准备容器来盛放成员变量
 4.分类的属性不能存值,必须使用运行时的关联对象
 */
@interface UIImageView (WebImage)

@property (nonatomic, copy) NSString *lastURLString;

- (void)fdsb_setImageWithURLString:(NSString *)URLString;

@end
