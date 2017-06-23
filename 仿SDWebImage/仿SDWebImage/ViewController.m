//
//  ViewController.m
//  仿SDWebImage
//
//  Created by itcastteacher on 17/6/23.
//  Copyright © 2017年 itcastteacher. All rights reserved.
//

#import "ViewController.h"
#import "DownloadOperation.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 准备队列
    NSOperationQueue *queue = [NSOperationQueue new];
    
    // 创建自定义操作
    DownloadOperation *op = [DownloadOperation new];
    
    // 把自定义操作添加到队列
    [queue addOperation:op];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
