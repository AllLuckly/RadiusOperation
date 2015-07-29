//
//  ViewController.m
//  RadiusOperation
//
//  Created by chenlei_mac on 15/7/28.
//  Copyright (c) 2015年 Bison. All rights reserved.
//

#import "ViewController.h"

#import "LBRadiusView.h"

@interface ViewController ()
{
    LBRadiusView *v;
    UIImageView *imgView;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blackColor];
    //注册通知
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(Skipping) name:@"Skipping" object:nil];
    imgView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-70, self.view.frame.size.height/2-70, 140, 140)];
    imgView.image = [UIImage imageNamed:@"1"];
    v = [[LBRadiusView alloc]init];
    [v starAnimash:imgView];
    
    [self.view addSubview:imgView];
    [self.view addSubview:v];
}
//实现原理根据改变 三角形的正弦定理 余弦定理
- (void)Skipping{
    
    v.angle += M_PI_2/30;
    v.center = CGPointMake(v.radius * cosf(v.angle) + imgView.center.x, v.radius * sinf(v.angle) + imgView.center.y);
}

- (void)dealloc
{
    [[NSNotificationCenter defaultCenter] removeObserver:self name:@"Skipping" object:nil];
}

@end
