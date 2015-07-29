//
//  LBRadiusView.m
//  RadiusOperation
//
//  Created by chenlei_mac on 15/7/28.
//  Copyright (c) 2015年 Bison. All rights reserved.
//


#import "LBRadiusView.h"

@interface LBRadiusView()
{
    UIImageView *_imgView;
}

@end

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
//实现原理根据改变 三角形的正弦定理 余弦定理
- (void)starAnimash:(UIImageView *)imgView
{
    _imgView = imgView;
    
    self.center = CGPointMake(_radius * cosf(_angle) + imgView.center.x, _radius * sinf(_angle) + imgView.center.y);
    
    _timer = [NSTimer scheduledTimerWithTimeInterval:_time target:self selector:@selector(moveView) userInfo:nil repeats:YES];
}

- (void)moveView
{
    self.angle += M_PI_2/30;
    self.center = CGPointMake(self.radius * cosf(self.angle) + _imgView.center.x, self.radius * sinf(self.angle) + _imgView.center.y);
}


@end
