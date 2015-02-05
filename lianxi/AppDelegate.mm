//
//  AppDelegate.m
//  lianxi
//
//  Created by Asia wang on 14-3-3.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "AppDelegate.h"
#import "MainViewController.h"
#import "SEcondViewController.h"

#import "AFNetworking.h"
#import "AFNetworkActivityIndicatorManager.h"

@implementation AppDelegate

BMKMapManager *_mapManger;

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
    // Override point for customization after application launch.
    if ([[[UIDevice currentDevice]systemVersion]floatValue ] >= 7.0) {
        [[UIApplication sharedApplication] setStatusBarStyle:UIStatusBarStyleBlackTranslucent];
    }
    _mapManger = [[BMKMapManager alloc]init];
    BOOL ret = [_mapManger start:[NSString stringWithFormat:@"%@",@"CRG4RNqvKNx0xDwA6UaGTld4"]  generalDelegate:self];
    if (!ret) {
        NSLog(@"manger start Fail");
    }
    
    
    NSURLCache *URLCache = [[NSURLCache alloc] initWithMemoryCapacity:4 * 1024 * 1024 diskCapacity:20 * 1024 * 1024 diskPath:nil];
    [NSURLCache setSharedURLCache:URLCache];
    
    [[AFNetworkActivityIndicatorManager sharedManager] setEnabled:YES];
    
    MainViewController *mvc = [[MainViewController alloc] init];
//    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:mvc];
    
    SEcondViewController *svc = [[SEcondViewController alloc] init];
//    UINavigationController *nav2 = [[UINavigationController alloc] initWithRootViewController:svc];
    
    UITabBarController *tab = [[UITabBarController alloc] init];
    tab.viewControllers = @[mvc,svc];
    [tab.tabBar setBackgroundImage:[UIImage imageNamed:@"tab-bar.png"]];
    
    
    self.window.rootViewController = tab;
    
    self.window.backgroundColor = [UIColor whiteColor];
    [self.window makeKeyAndVisible];
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
