//
//  XcodeRefreshView.m
//  lianxi
//
//  Created by Asia wang on 14-4-16.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "XcodeRefreshView.h"

@interface XcodeRefreshView ()<UITableViewDataSource,UITableViewDelegate>


@end

@implementation XcodeRefreshView
{
    UITableView *_tableView;
    UIRefreshControl *_refresh;
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

    [self addTheTableView];

}

- (void)addTheTableView
{
    _tableView = [[UITableView alloc]initWithFrame:CGRectMake(0, 0, 320, [[UIScreen mainScreen]bounds].size.height) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    
    [self addTheRefreshController];
}

- (void)addTheRefreshController
{
    _refresh = [[UIRefreshControl alloc] init];
    _refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"xialashuaxin"];
//    _refresh.state = 
    [_refresh addTarget:self action:@selector(refreshViewControllerEventValueChanged) forControlEvents:UIControlEventValueChanged];
    
    [_tableView addSubview:_refresh];
}

- (void)refreshViewControllerEventValueChanged
{
    _refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"刷新中..."];
    [self performSelector:@selector(loadTheData) withObject:nil afterDelay:3.0];
}

- (void)loadTheData
{
    [_refresh endRefreshing];
    _refresh.attributedTitle = [[NSAttributedString alloc] initWithString:@"下拉刷新"];
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 20;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    return cell;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
