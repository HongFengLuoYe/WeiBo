//
//  RootViewController.m
//  微博
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "RootViewController.h"
#import "NavigationController.h"
#import "HomeController.h"
#import "MessageController.h"
#import "DiscoverController.h"
#import "MoreController.h"



@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self creatTabbarItem];
    
}

-(void)creatTabbarItem
{
    HomeController *viewCtrl1 = [[HomeController alloc] init];
    [self addChild:viewCtrl1 AndTitle:@"首页" AndImage:@"tabbar_home" AndselectImage:@"tabbar_home_selected"];
    
    
    MessageController *viewCtrl2 = [[MessageController alloc] init];
    [self addChild:viewCtrl2 AndTitle:@"消息" AndImage:@"tabbar_message_center" AndselectImage:@"tabbar_message_center_selected"];
    
    DiscoverController *viewCtrl3 = [[DiscoverController alloc] init];
    [self addChild:viewCtrl3 AndTitle:@"发现" AndImage:@"tabbar_discover" AndselectImage:@"tabbar_discover_selected"];
    
    
    MoreController *viewCtrl4 = [[MoreController alloc] init];
    [self addChild:viewCtrl4 AndTitle:@"我" AndImage:@"tabbar_profile" AndselectImage:@"tabbar_profile_selected"];
    
}

-(void)addChild:(UIViewController *)viewCtrl AndTitle:(NSString *)title AndImage:(NSString *)image AndselectImage:(NSString *)selectImage
{
    
    
    viewCtrl.title = title;
    viewCtrl.tabBarItem.image = [UIImage imageNamed:image];
    viewCtrl.tabBarItem.selectedImage = [[UIImage imageNamed:selectImage] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    NSMutableDictionary *TextAttributes = [NSMutableDictionary dictionary];
    TextAttributes[NSForegroundColorAttributeName] = [UIColor blackColor];
    NSMutableDictionary *SelectTextAttributes = [NSMutableDictionary dictionary];
    SelectTextAttributes[NSForegroundColorAttributeName] = [UIColor orangeColor];
    
    [viewCtrl.tabBarItem setTitleTextAttributes:TextAttributes forState:UIControlStateNormal];
    [viewCtrl.tabBarItem setTitleTextAttributes:SelectTextAttributes forState:UIControlStateSelected];
    NavigationController *navigationCtrl = [[NavigationController alloc] initWithRootViewController:viewCtrl];

    [self addChildViewController:navigationCtrl];
}



@end
