//
//  AlertViewController.m
//  lianxi
//
//  Created by Asia wang on 14-3-21.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "AlertViewController.h"
#import <CoreText/CoreText.h>

@interface AlertViewController ()<UIAlertViewDelegate>

@end

@implementation AlertViewController
{

}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    NSMutableAttributedString *string =[[[NSMutableAttributedString alloc] initWithString:@"uuuuuuuuu"] copy];
    
    [string addAttribute:(NSString *)kCTForegroundColorAttributeName
                        value:(id)[UIColor redColor].CGColor
                        range:NSMakeRange(0, 4)];
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"1233254" message:@"SBSSBSBSB" delegate:self cancelButtonTitle:string otherButtonTitles:@"yes", nil];
    [alert show];
    NSArray *array = alert.subviews;
    
    for (int i = 0; i<array.count; i++) {
        id ob = [array objectAtIndex:i];
        if (ob == [UIButton class]) {
            UIButton *btn = (UIButton *)ob;
            NSLog(@"%@",btn.titleLabel.text);
        }
    }
}

- (NSString *)buttonTitleAtIndex:(NSInteger)buttonIndex
{
    
    if (buttonIndex == 0) {
        return @"0000000";
    }else{
        return @"";
    }
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
