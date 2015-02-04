//
//  WSliderView.h
//  lianxi
//
//  Created by Asia wang on 14-7-3.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface WSliderView : UIView

@property(strong)UISlider *slider;


- (id)initWithFrame:(CGRect)frame andSliderMax:(CGFloat)max andSliderMin:(CGFloat)min;

@end
