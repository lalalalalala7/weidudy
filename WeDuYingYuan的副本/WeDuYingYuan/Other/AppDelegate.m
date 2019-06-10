//
//  AppDelegate.m
//  WeDuYingYuan
//
//  Created by 1111 on 2019/6/6.
//  Copyright © 2019年 1111. All rights reserved.
//

#import "AppDelegate.h"
#import "MovieViewC.h"
#import "CinemaVC.h"
#import "MineVC.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    MovieViewC *mvc = [[ MovieViewC alloc] init];
    UINavigationController *mNavc = [[UINavigationController alloc] initWithRootViewController:mvc];
    
    mNavc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"电影" image:[UIImage imageNamed:@"film2"] selectedImage:[UIImage imageNamed:@"film"]];
    CinemaVC *cVc =[[CinemaVC alloc] init];
    
    UINavigationController *cNavc = [[UINavigationController alloc] initWithRootViewController:cVc];
    cNavc.tabBarItem =[[ UITabBarItem alloc] initWithTitle:@"影院" image:[UIImage imageNamed:@"cinema2"] selectedImage:[UIImage imageNamed:@"cinema"]];
    MineVC *myVc= [[MineVC alloc] init];
    UINavigationController *myNavc =[[UINavigationController alloc] initWithRootViewController:myVc];
    myNavc.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"person2"] selectedImage:[UIImage imageNamed:@"person"]];
    UITabBarController *tab= [[UITabBarController alloc] init];
    tab.viewControllers  = @[mNavc,cNavc,myNavc];
 [mNavc.tabBarItem setTitleTextAttributes:                                                         [NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
     [cNavc.tabBarItem setTitleTextAttributes:                                                         [NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
     [myNavc.tabBarItem setTitleTextAttributes:                                                         [NSDictionary dictionaryWithObjectsAndKeys:[UIColor blackColor],UITextAttributeTextColor, nil]forState:UIControlStateSelected];
    self.window.rootViewController=  tab;
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
