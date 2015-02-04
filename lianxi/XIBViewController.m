//
//  XIBViewController.m
//  lianxi
//
//  Created by Asia wang on 14-4-14.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "XIBViewController.h"

@interface XIBViewController ()

@end

@implementation XIBViewController

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
    
    
    UIControl *trol = [[UIControl alloc] init];
    trol.frame = self.uiscrollView.bounds;
    [trol addTarget:self action:@selector(controlCLick) forControlEvents:UIControlEventTouchUpInside];
    [self.uiscrollView addSubview:trol];
    [self.uiscrollView sendSubviewToBack:trol];
}

- (void)controlCLick
{
    [self.oneText resignFirstResponder];
    [self.twoText resignFirstResponder];
    [self.threeText resignFirstResponder];
    [self.fourText resignFirstResponder];
    [self.fiveTExt resignFirstResponder];
}

- (BOOL)textFieldShouldReturn:(UITextField *)textField
{
    [self.oneText resignFirstResponder];
    [self.twoText resignFirstResponder];
    [self.threeText resignFirstResponder];
    [self.fourText resignFirstResponder];
    [self.fiveTExt resignFirstResponder];
    return YES;
}

- (void)textFieldDidBeginEditing:(UITextField *)textField
{
    if (textField.tag == 1) {
        NSLog(@"1");
    }else if(textField.tag == 2){
        NSLog(@"2");
    }else if(textField.tag == 3){
        NSLog(@"3");
    }else if(textField.tag == 4){
        NSLog(@"4");
    }else{
        NSLog(@"5");
    }
}

- (void)textFieldDidEndEditing:(UITextField *)textField
{

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
