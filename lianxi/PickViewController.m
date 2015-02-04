//
//  PickViewController.m
//  lianxi
//
//  Created by Asia wang on 14-3-19.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "PickViewController.h"

@interface PickViewController ()

@end

@implementation PickViewController
{
    UIToolbar *_toobar;
    
    UIPickerView *_pickView;
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
    
    
    [self loadThePickView];
}

- (void)loadThePickView
{
    _toobar = [[UIToolbar alloc] init];
    _toobar.frame = self.navigationController.toolbar.bounds;
    
}

- (void)willAnimateRotationToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration
{
    if (toInterfaceOrientation == UIInterfaceOrientationLandscapeLeft) {
        NSLog(@"转频了");
    }
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
