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

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
}
-(void)pushViewController:(UIViewController *)viewController animated:(BOOL)animated
{
    
    
   
    if (self.viewControllers.count>0) {
        viewController.hidesBottomBarWhenPushed = YES;
        UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [leftButton setImage:[UIImage imageNamed:@"navigationbar_back"] forState:UIControlStateNormal];
        [leftButton setImage:[UIImage imageNamed:@"navigationbar_back_highlighted"] forState:UIControlStateHighlighted];
        leftButton.size = leftButton.currentImage.size;
        leftButton.frame = CGRectMake(0, 0, leftButton.width, leftButton.height);
        [leftButton addTarget:self action:@selector(back) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftButton];
        
        
        UIButton *rightButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [rightButton setImage:[UIImage imageNamed:@"navigationbar_more"] forState:UIControlStateNormal];
        [rightButton setImage:[UIImage imageNamed:@"navigationbar_more_highlighted"] forState:UIControlStateHighlighted];
        rightButton.size = rightButton.currentImage.size;
        rightButton.frame = CGRectMake(0, 0, rightButton.width, rightButton.height);
        [rightButton addTarget:self action:@selector(more) forControlEvents:UIControlEventTouchUpInside];
        viewController.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightButton];

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
