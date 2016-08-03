//
//  ScrollView.m
//  CircleViewDemo
//
//  Created by wanglidan on 16/8/2.
//  Copyright © 2016年 王丽丹. All rights reserved.
//

#import "ScrollView.h"

@implementation ScrollView

+ (Class)layerClass
{
    return [CAScrollLayer class];
}
- (void)setup
{
    self.layer.masksToBounds = YES;
    UIPanGestureRecognizer *recognizer = nil;
    recognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
    [self addGestureRecognizer:recognizer];
    
}
- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setup];
    }
    return self;
}
- (void)awakeFromNib
{
    [self setup];
}
- (void)pan:(UIPanGestureRecognizer *)recognizer
{
    CGPoint offset = self.bounds.origin;
    offset.x -= [recognizer translationInView:self].x;
    offset.y -= [recognizer translationInView:self].y;
    [(CAScrollLayer *)self.layer scrollPoint:offset];
    [recognizer setTranslation:CGPointZero inView:self];
}
@end
