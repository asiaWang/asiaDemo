//
//  A_view.m
//  lianxi
//
//  Created by Asia wang on 14-4-22.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "A_view.h"

@implementation A_view
{
    CGFloat _top;
    CGFloat _height;
    CGFloat _left;
    CGFloat _right;
    UIColor *_color;
}
- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

- (void)drawRect:(CGRect)rect
{
    [_color setFill];
    CGRect align = [self alignmentRectForFrame:self.bounds];
    UIRectFill(align);
}

- (void)setFillColor:(UIColor *)color
{
    _color = color;
}

- (void)setTop:(CGFloat)top hetght:(CGFloat)heith left:(CGFloat)left andRight:(CGFloat)right
{
    _top = top;
    _height = heith;
    _left = left;
    _right = right;
}

- (UIEdgeInsets)alignmentRectInsets
{
    return UIEdgeInsetsMake(_top, _height, _left, _right);
}


/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
