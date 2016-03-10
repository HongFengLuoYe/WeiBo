//
//  TestViewController.m
//  微博
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "TestViewController.h"
#import "Test2ViewController.h"

@interface TestViewController ()

@end

@implementation TestViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
}

-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    Test2ViewController *test2Ctrl = [[Test2ViewController alloc] init];
    [self.navigationController pushViewController:test2Ctrl animated:YES];
}
@end
