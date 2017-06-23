//
//  APPModel.m
//  列表异步加载网络图片
//
//  Created by itcastteacher on 17/6/22.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import "APPModel.h"

@implementation APPModel

- (NSString *)description {
    return [NSString stringWithFormat:@"%@ %@ %@",self.name,self.download,self.icon];
}

@end
