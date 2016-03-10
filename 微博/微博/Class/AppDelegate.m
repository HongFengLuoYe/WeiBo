//
//  AppDelegate.m
//  微博
//
//  Created by Mac on 16/3/9.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    
    UIWindow *window = [[UIWindow alloc] initWithFrame:[UIScreen mainScreen].bounds];
    window.backgroundColor = [UIColor whiteColor];
    [window makeKeyAndVisible];
    self.window = window;
    
    UITabBarController *tabbarCtrl = [[UITabBarController alloc] init];
    self.window.rootViewController  = tabbarCtrl;
    
    UIViewController *viewCtrl1 = [[UIViewController alloc] init];
    viewCtrl1.view.backgroundColor = RandomClolor;
    viewCtrl1.tabBarItem.title = @"首页";
    viewCtrl1.tabBarItem.image = [UIImage imageNamed:@"tabbar_home"];
    viewCtrl1.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_home_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    NSMutableDictionary *TextAttributes = [NSMutableDictionary dictionary];
    TextAttributes[NSForegroundColorAttributeName] = [UIColor blackColor];
    NSMutableDictionary *SelectTextAttributes = [NSMutableDictionary dictionary];
    SelectTextAttributes[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    
    UIViewController *viewCtrl2 = [[UIViewController alloc] init];
    viewCtrl2.view.backgroundColor = RandomClolor;
    viewCtrl2.tabBarItem.title = @"消息";
    viewCtrl2.tabBarItem.image = [UIImage imageNamed:@"tabbar_message_center"];
    viewCtrl2.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_message_center_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [viewCtrl2.tabBarItem setTitleTextAttributes:TextAttributes forState:UIControlStateNormal];
    [viewCtrl2.tabBarItem setTitleTextAttributes:SelectTextAttributes forState:UIControlStateSelected];
    
    UIViewController *viewCtrl3 = [[UIViewController alloc] init];
    viewCtrl3.view.backgroundColor = RandomClolor;
    viewCtrl3.tabBarItem.title = @"发现";
    viewCtrl3.tabBarItem.image = [UIImage imageNamed:@"tabbar_discover"];
    viewCtrl3.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_discover_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [viewCtrl3.tabBarItem setTitleTextAttributes:TextAttributes forState:UIControlStateNormal];
    [viewCtrl3.tabBarItem setTitleTextAttributes:SelectTextAttributes forState:UIControlStateSelected];

    
    UIViewController *viewCtrl4 = [[UIViewController alloc] init];
    viewCtrl4.view.backgroundColor = RandomClolor;
    viewCtrl4.tabBarItem.title = @"我";
    viewCtrl4.tabBarItem.image = [UIImage imageNamed:@"tabbar_profile"];
    viewCtrl4.tabBarItem.selectedImage = [[UIImage imageNamed:@"tabbar_profile_selected"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    [viewCtrl4.tabBarItem setTitleTextAttributes:TextAttributes forState:UIControlStateNormal];
    [viewCtrl4.tabBarItem setTitleTextAttributes:SelectTextAttributes forState:UIControlStateSelected];

    
    
    tabbarCtrl.viewControllers = @[viewCtrl1,viewCtrl2,viewCtrl3,viewCtrl4];
    
    
    
    


    

    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
