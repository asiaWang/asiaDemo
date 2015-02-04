//
//  MainViewController.m
//  lianxi
//
//  Created by Asia wang on 14-3-3.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "MainViewController.h"
#import "L_header.h"


@interface MainViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation MainViewController
{
    UITableView *_tableView;
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
    [[UIApplication sharedApplication]setStatusBarStyle:UIStatusBarStyleLightContent];
    [self.navigationController.navigationBar setBackgroundImage:[UIImage imageNamed:@"nav.png"] forBarMetrics:UIBarMetricsDefault];
    
    self.title = @"main";
    NSLog(@"viewDidLoad");
    
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 320, [[UIScreen mainScreen] bounds].size.height - 64) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [self loadImageForViserBleCell];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
   static NSString *cellNmae = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellNmae];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellNmae];
        
    }
    if (indexPath.row == 0) {
        cell.textLabel.text = @"MBProgressHUd";
    }else if(indexPath.row == 1){
        cell.textLabel.text = @"keybord";
    }else if(indexPath.row == 2){
        cell.textLabel.text = @"动态改变cell的高度";
    }else if(indexPath.row == 3){
        cell.textLabel.text = @"AlertView";
    }else if(indexPath.row == 4){
        cell.textLabel.text = @"AFNetworking";
    }else if(indexPath.row == 5){
        cell.textLabel.text = @"上啦刷新，下拉刷新";
    }else if(indexPath.row == 6){
        cell.textLabel.text = @"XIB";
    }else if(indexPath.row == 7){
        cell.textLabel.text = @"refresh>=ios6";
    }else if(indexPath.row == 8){
        cell.textLabel.text = @"自定义控件";
    }else if(indexPath.row == 9){
        cell.textLabel.text = @"block";
    }else if(indexPath.row == 10){
        cell.textLabel.text = @"coreText";
    }else if(indexPath.row == 11){
        cell.textLabel.text = @"CIIimage";
    }else if(indexPath.row == 12){
        cell.textLabel.text = @"map";
    }else if(indexPath.row == 13){
        cell.textLabel.text = @"WSlider";
    }else if(indexPath.row == 14){
        
    }else if(indexPath.row == 15){
        
    }else if(indexPath.row == 16){
        
    }
    
    
    return cell;

}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (indexPath.row == 0) {
        HudViewController *_hud = [[HudViewController alloc] init];
        [self.navigationController pushViewController:_hud animated:YES];
    }else if(indexPath.row == 1){
        keyBordView *xx = [[keyBordView alloc] init];
        [self.navigationController pushViewController:xx animated:YES];
    }else if(indexPath.row == 2){
        TableViewController *tab = [[TableViewController alloc] init];
        [self.navigationController pushViewController:tab animated:YES];
    }else if(indexPath.row == 3){
        AlertViewController *avc = [[AlertViewController alloc] init];
        [self.navigationController pushViewController:avc animated:YES];
    }else if(indexPath.row == 4){
        AFNetworkingView *afView = [[AFNetworkingView alloc] init];
        [self.navigationController pushViewController:afView animated:YES];
    }else if(indexPath.row == 5){
        RefreshView *rfView = [[RefreshView alloc] init];
        [self.navigationController pushViewController:rfView animated:YES];
    }else if(indexPath.row == 6){
        XIBViewController *XBView = [[XIBViewController alloc] init];
        [self.navigationController pushViewController:XBView animated:YES];
    }else if(indexPath.row == 7){
        XcodeRefreshView *refresh = [[XcodeRefreshView alloc] init];
        [self.navigationController pushViewController:refresh animated:YES];
    }else if(indexPath.row == 8){
        A_ViewController *aView = [[A_ViewController alloc]init];
        [self.navigationController pushViewController:aView animated:YES];
    }else if(indexPath.row == 9){
        Block_View *bView = [[Block_View alloc] init];
        [self.navigationController pushViewController:bView animated:YES];
    }else if(indexPath.row == 10){
        Core_textViewController *coreTextView= [[Core_textViewController alloc] init];
        [self.navigationController pushViewController:coreTextView animated:YES];
        
    }else if(indexPath.row == 11){
        CIImage_View *iView = [[CIImage_View alloc]init];
        [self.navigationController pushViewController:iView animated:YES
         ];
    }else if(indexPath.row == 12){
        MapViewController *mView = [[MapViewController alloc]init];
        [self.navigationController pushViewController:mView animated:YES];
    }else if(indexPath.row == 13){
        WSliderControllerViewController *sView = [[WSliderControllerViewController alloc] init];
        [self.navigationController pushViewController:sView animated:YES];
    }else if(indexPath.row == 14){
        
    }else if(indexPath.row == 15){
        
    }else if(indexPath.row == 16){
        
    }

}

- (void)loadImageForViserBleCell{
    NSArray *ArrayCells = [_tableView visibleCells];
    //1223
}


- (void)didReceiveMemoryWarning
{
    NSLog(@"内错警告。。。。");
    
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
