//
//  WSliderView.m
//  lianxi
//
//  Created by Asia wang on 14-7-3.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "WSliderView.h"

@implementation WSliderView
{
    CGFloat _max;
    CGFloat _min;
}
//- (id)initWithFrame:(CGRect)frame
//{
//    self = [super initWithFrame:frame];
//    if (self) {
//        // Initialization code
//        
//        [self initWithTheSlider];
//    }
//    return self;
//}

- (id)initWithFrame:(CGRect)frame andSliderMax:(CGFloat)max andSliderMin:(CGFloat)min
{
    self = [super initWithFrame:frame];
    if (self) {
        _max = max;
        _min = min;
        self.userInteractionEnabled = YES;
        [self initWithTheSlider];
    }
    return self;
}

- (void)initWithTheSlider
{
    CGRect rect = self.frame;
    self.slider = [[UISlider alloc] initWithFrame:CGRectMake(rect.origin.x + 5, rect.origin.y + 10, rect.size.width - 10, rect.size.height)];
    self.slider.value = 100;
    self.slider.maximumValue = _max;
    self.slider.minimumValue = _min;
    
    self.slider.continuous = NO;
    [self.slider addTarget:self action:@selector(ValueChanged:) forControlEvents:UIControlEventValueChanged];
    [self addSubview:self.slider];
}

- (void)ValueChanged:(UISlider *)slider
{
    
    [slider setValue:slider.value animated:YES];
    
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
