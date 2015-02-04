//
//  A_ViewController.m
//  lianxi
//
//  Created by Asia wang on 14-4-22.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "A_ViewController.h"
#import "A_view.h"

@interface A_ViewController ()

@end

@implementation A_ViewController

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

    A_view *aView = [[A_view alloc] initWithFrame:CGRectMake(80, 80, 100, 100)];
    [aView setTop:5 hetght:5 left:5 andRight:5];
    [aView setFillColor:[UIColor redColor]];
    aView.backgroundColor = [UIColor grayColor];
    [self.view addSubview:aView];
    
    UICollectionViewController *con = [[UICollectionViewController alloc]initWithCollectionViewLayout:self.view];
    
//    [self.view addSubview:con];/
    
}





- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
