//
//  LBRadiusView.h
//  RadiusOperation
//
//  Created by chenlei_mac on 15/7/28.
//  Copyright (c) 2015年 Bison. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LBRadiusView : UIView



@property (nonatomic, strong) NSTimer *timer;

@property (nonatomic) NSInteger radius;

@property (nonatomic) CGFloat time;

@property (nonatomic) CGFloat angle;
- (void)starAnimash:(UIImageView *)imgView;



@end
