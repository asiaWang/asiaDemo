//
//  HudViewController.m
//  lianxi
//
//  Created by Asia wang on 14-3-6.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "HudViewController.h"
#import "MBProgressHUD.h"

@interface HudViewController ()<MBProgressHUDDelegate>

@end

@implementation HudViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}
- (IBAction)click:(id)sender {
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:self.navigationController.view animated:YES];
    hud.mode = MBProgressHUDModeText;
    hud.delegate = self;
    hud.labelText = @"123443567";
    hud.removeFromSuperViewOnHide = YES;
        [hud hide:YES afterDelay:1];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
