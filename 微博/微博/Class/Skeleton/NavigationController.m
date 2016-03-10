//
//  NavigationController.m
//  微博
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "NavigationController.h"

@interface NavigationController ()

@end



@implementation NavigationController

+(void)initialize
{
   UIBarButtonItem  *item =  [UIBarButtonItem appearance];
    NSMutableDictionary *textAttri = [NSMutableDictionary dictionary];
    textAttri[NSForegroundColorAttributeName] = [UIColor orangeColor];
    textAttri[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:textAttri forState:UIControlStateNormal];
    
    NSMutableDictionary *disableTextAttri = [NSMutableDictionary dictionary];
    disableTextAttri[NSForegroundColorAttributeName] = [UIColor grayColor];
    disableTextAttri[NSFontAttributeName] = [UIFont systemFontOfSize:13];
    [item setTitleTextAttributes:disableTextAttri forState:UIControlStateDisabled];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    


}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    if (self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed = YES;
        
        viewController.navigationItem.leftBarButtonItem = [UIBarButtonItem creatNavigionItemsWithTarget:self Action:@selector(back) AndImage:@"navigationbar_back" AndhighLightedImage:@"navigationbar_back_highlighted"];
        
        viewController.navigationItem.rightBarButtonItem = [UIBarButtonItem creatNavigionItemsWithTarget:self Action:@selector(more) AndImage:@"navigationbar_more" AndhighLightedImage:@"navigationbar_more_highlighted"];
        }
    [super pushViewController:viewController animated:animated];

    
}
-(void)back
{
    [self popToRootViewControllerAnimated:YES];
}

-(void)more
{
    [self popToRootViewControllerAnimated:YES];
}

@end
