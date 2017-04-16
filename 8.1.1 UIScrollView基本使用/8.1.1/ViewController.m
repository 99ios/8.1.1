//
//  ViewController.m
//  8.1.1
//
//  Created by 李维佳 on 2017/3/31.
//  Copyright © 2017年 Liz. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //创建一个UIImageView对象
    UIImageView *imageView = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"image"]];
    //创建一个与屏幕等宽等高的滚动视图
    UIScrollView *myScrollView = [[UIScrollView alloc] initWithFrame:self.view.bounds];
    //设置滚动区域的大小
    myScrollView.contentSize = imageView.bounds.size;
    //设置滚动视图的其他属性
    myScrollView.backgroundColor = [UIColor redColor];
    myScrollView.contentOffset = CGPointMake(0, 0);
    myScrollView.contentInset = UIEdgeInsetsMake(0, 0, 0, 0);
    //添加子视图
    [myScrollView addSubview:imageView];
    [self.view addSubview:myScrollView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
