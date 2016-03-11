//
//  UIBarButtonItem+Extension.m
//  微博
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import "UIBarButtonItem+Extension.h"

@implementation UIBarButtonItem (Extension)

+(UIBarButtonItem*)itemsWithTarget:(id)target Action:(SEL)action AndImage:(NSString *)image AndhighLightedImage:(NSString *)highlightedImage
{
    UIButton *Button = [UIButton buttonWithType:UIButtonTypeCustom];
    [Button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    
    [Button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [Button setImage:[UIImage imageNamed:highlightedImage] forState:UIControlStateHighlighted];
    
    Button.size = Button.currentImage.size;
    return [[UIBarButtonItem alloc] initWithCustomView:Button];
    
}


@end
