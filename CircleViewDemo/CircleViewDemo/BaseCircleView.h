//
//  BaseCircleView.h
//  CircleViewDemo
//
//  Created by 王丽丹 on 16/7/28.
//  Copyright © 2016年 王丽丹. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface BaseCircleView : UIView
//设置圆弧渐变色的起始色
@property(nonatomic, strong) UIColor *minLineColor;
//设置圆弧渐变色的中间色
@property (nonatomic, strong) UIColor *midLineColor;
//设置圆弧渐变色的终止色
@property (nonatomic, strong) UIColor *maxLineColor;
//设置圆弧背景色
@property (nonatomic, strong) UIColor *lineTintColor;
//设置进度
@property (nonatomic, assign) CGFloat progress;
//设置线的宽度  max 20 min 0.5
@property (nonatomic, assign) CGFloat lineWidth;
//设置是否显示百分比标签
@property (nonatomic, assign) BOOL showTipLabel;
//设置百分比标签进度颜色
@property (nonatomic, strong) UIColor *textColor;

- (void)setProgress:(CGFloat)progress animated:(BOOL)animated;

@end
