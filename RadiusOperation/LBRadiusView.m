//
//  LBRadiusView.m
//  RadiusOperation
//
//  Created by chenlei_mac on 15/7/28.
//  Copyright (c) 2015年 Bison. All rights reserved.
//


#import "LBRadiusView.h"

@implementation LBRadiusView


- (id)init
{
    self = [super init];
    if (self) {
        self.frame = CGRectMake(0, 0, 20, 20);
        self.backgroundColor = [UIColor clearColor];
        _radius = 66;
        _angle = M_PI_2/3;
        UIImageView *moveImg = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 20, 20)];
        moveImg.image = [UIImage imageNamed:@"liaght@3x"];
        [self addSubview:moveImg];
        _time = 0.03;
    }
    return self;
}

- (void)starAnimash:(UIImageView *)imgView
{
    self.center = CGPointMake(_radius * cosf(_angle) + imgView.center.x, _radius * sinf(_angle) + imgView.center.y);
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:_time target:self selector:@selector(moveView) userInfo:nil repeats:YES];
}

- (void)moveView
{
    
    //创建通知
    NSNotification *notification =[NSNotification notificationWithName:@"Skipping" object:nil userInfo:nil];
    //通过通知中心发送通知
    [[NSNotificationCenter defaultCenter] postNotification:notification];

}


@end
