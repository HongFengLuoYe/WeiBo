//
//  AppDelegate.m
//  微博
//
//  Created by Mac on 16/3/9.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "AppDelegate.h"
#import "HomeController.h"
#import "MessageController.h"
#import "DiscoverController.h"
#import "MoreController.h"

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
    
    HomeController *viewCtrl1 = [[HomeController alloc] init];
    [self addChild:viewCtrl1 AndTitle:@"首页" AndImage:@"tabbar_home" AndselectImage:@"tabbar_home_selected"];
    
    
    MessageController *viewCtrl2 = [[MessageController alloc] init];
    [self addChild:viewCtrl2 AndTitle:@"消息" AndImage:@"tabbar_message_center" AndselectImage:@"tabbar_message_center_selected"];
    
    DiscoverController *viewCtrl3 = [[DiscoverController alloc] init];
    [self addChild:viewCtrl3 AndTitle:@"发现" AndImage:@"tabbar_discover" AndselectImage:@"tabbar_discover_selected"];

    
    MoreController *viewCtrl4 = [[MoreController alloc] init];
    [self addChild:viewCtrl4 AndTitle:@"我" AndImage:@"tabbar_profile" AndselectImage:@"tabbar_profile_selected"];


    tabbarCtrl.viewControllers = @[viewCtrl1,viewCtrl2,viewCtrl3,viewCtrl4];
    
    
    return YES;
}

-(void)addChild:(UIViewController *)viewCtrl AndTitle:(NSString *)title AndImage:(NSString *)image AndselectImage:(NSString *)selectImage
{
    
    viewCtrl.view.backgroundColor = RandomClolor;
    viewCtrl.tabBarItem.title = title;
    viewCtrl.tabBarItem.image = [UIImage imageNamed:image];
    viewCtrl.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *TextAttributes = [NSMutableDictionary dictionary];
    TextAttributes[NSForegroundColorAttributeName] = [UIColor blackColor];
    NSMutableDictionary *SelectTextAttributes = [NSMutableDictionary dictionary];
    SelectTextAttributes[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [viewCtrl.tabBarItem setTitleTextAttributes:TextAttributes forState:UIControlStateNormal];
    [viewCtrl.tabBarItem setTitleTextAttributes:SelectTextAttributes forState:UIControlStateSelected];
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
