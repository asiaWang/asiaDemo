//
//  WSliderControllerViewController.m
//  lianxi
//
//  Created by Asia wang on 14-7-3.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "WSliderControllerViewController.h"
#import "WSliderView.h"

@interface WSliderControllerViewController ()

@end

@implementation WSliderControllerViewController

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
	// Do any additional setup after loading the view.
    self.view.userInteractionEnabled = YES;
    WSliderView *sliderView = [[WSliderView alloc] initWithFrame:CGRectMake(0, 60, 320, 60) andSliderMax:100 andSliderMin:0];
    [self.view addSubview:sliderView];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
