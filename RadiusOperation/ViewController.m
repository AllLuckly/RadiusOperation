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
    imgView = [[UIImageView alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2-70, self.view.frame.size.height/2-70, 140, 140)];
    
    imgView.image = [UIImage imageNamed:@"1"];
    
    v = [[LBRadiusView alloc]init];
    
    [v starAnimash:imgView];
    
    [self.view addSubview:imgView];
    [self.view addSubview:v];
}



- (void)dealloc
{
    
    [v.timer invalidate];
}

@end
