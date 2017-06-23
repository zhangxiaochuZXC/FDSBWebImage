//
//  APPModel.h
//  列表异步加载网络图片
//
//  Created by itcastteacher on 17/6/22.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface APPModel : NSObject

@property (nonatomic, copy) NSString *icon;
@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *download;

@end

/*
{
    "name":"植物大战僵尸",
    "download":"10311万",
    "icon":"http://p16.qhimg.com/dr/48_48_/t0125e8d438ae9d2fbb.png"
}
 */
