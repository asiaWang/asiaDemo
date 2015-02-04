//
//  RefreshView.m
//  lianxi
//
//  Created by Asia wang on 14-3-31.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "RefreshView.h"
#import "MJRefresh.h"

@interface RefreshView ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation RefreshView
{
   __block UITableView *_tableView;
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
    
    [self creatTheTable];
}

- (void)creatTheTable
{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 320, [[UIScreen mainScreen]bounds].size.height - 44 - 64) style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    
    
   __block MJRefreshHeaderView *headView = [MJRefreshHeaderView header];
    headView.scrollView = _tableView;
    headView.beginRefreshingBlock = ^(MJRefreshBaseView *refresh){
//        sleep(10);
        dispatch_sync(dispatch_get_global_queue(0, 0), ^{
            sleep(5);
            dispatch_sync(dispatch_get_main_queue(), ^{
                [headView endRefreshing];
            });
        });
        
    };
    [headView beginRefreshing];
    
    headView.endStateChangeBlock = ^(MJRefreshBaseView *refesh){
    };
    
    headView.refreshStateChangeBlock = ^(MJRefreshBaseView *refresh,MJRefreshState state){
        
//        sleep(2);
        switch (state) {
            case MJRefreshStateNormal:
                
                break;
            case MJRefreshStatePulling:
                
                break;
                
            case MJRefreshStateRefreshing:
                break;
            default:
                break;
        }
    
    };
}

- (NSInteger )tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
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
