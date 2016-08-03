//
//  ReflectionView.m
//  CircleViewDemo
//
//  Created by wanglidan on 16/8/2.
//  Copyright © 2016年 王丽丹. All rights reserved.
//

#import "ReflectionView.h"

@implementation ReflectionView

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

+ (Class)layerClass
{
    return [CAReplicatorLayer class];
}

- (void)setup
{
    CAReplicatorLayer *layer = (CAReplicatorLayer *)self.layer;
    layer.instanceCount = 2;
    
    CATransform3D transform = CATransform3DIdentity;
    CGFloat verticalOffset = self.bounds.size.height + 2;
    transform = CATransform3DTranslate(transform, 0, verticalOffset, 0);
    transform = CATransform3DScale(transform, 1, -1, 0);
    layer.instanceTransform = transform;
    
    layer.instanceAlphaOffset = -0.6;
    
}

@end
