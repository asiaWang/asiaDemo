//
//  Block_View.m
//  lianxi
//
//  Created by Asia wang on 14-4-23.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "Block_View.h"

@interface Block_View ()

@end

@implementation Block_View

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

    static UIEvent *event;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        event = [event allTouches];
    });
}



- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
