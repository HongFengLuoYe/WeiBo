//
//  HFYSearchbBar.m
//  微博
//
//  Created by Mac on 16/3/11.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "HFYSearchbBar.h"

@implementation HFYSearchbBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        self.placeholder = @"请输入内容";
        self.background = [UIImage imageNamed:@"searchbar_textfield_background"];

        UIImageView *searchIcon = [[UIImageView alloc] init];
        searchIcon.size = CGSizeMake(30, 30);
        searchIcon.contentMode = UIViewContentModeCenter;
        searchIcon.image = [UIImage imageNamed:@"searchbar_textfield_search_icon"];
        self.leftView = searchIcon;
        self.leftViewMode = UITextFieldViewModeAlways;

    }
    return self;
}
+(instancetype)searchbBar
{
    return [[self alloc] init];
}
@end
