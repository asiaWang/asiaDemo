//
//  XIBViewController.h
//  lianxi
//
//  Created by Asia wang on 14-4-14.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XIBViewController : UIViewController<UITextFieldDelegate,UIScrollViewDelegate>

@property (weak, nonatomic) IBOutlet UIScrollView *uiscrollView;
@property (weak, nonatomic) IBOutlet UITextField *oneText;
@property (weak, nonatomic) IBOutlet UITextField *twoText;
@property (weak, nonatomic) IBOutlet UITextField *threeText;
@property (weak, nonatomic) IBOutlet UITextField *fourText;
@property (weak, nonatomic) IBOutlet UITextField *fiveTExt;
@end
