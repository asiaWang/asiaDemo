//
//  AFNetworkingView.m
//  lianxi
//
//  Created by Asia wang on 14-3-28.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "AFNetworkingView.h"
#import "AFHTTPRequestOperation.h"

typedef NS_ENUM(NSInteger, AFState) {
    AFStart,
    AFConnctioning,
};

@interface AFNetworkingView ()
@property (weak, nonatomic) IBOutlet UIProgressView *progressView;
@property (weak, nonatomic) IBOutlet UIButton *AFStart;
@end

@implementation AFNetworkingView

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
}
- (IBAction)start:(id)sender {
    

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
