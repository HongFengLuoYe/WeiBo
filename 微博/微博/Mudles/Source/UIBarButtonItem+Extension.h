//
//  UIBarButtonItem+Extension.h
//  微博
//
//  Created by Mac on 16/3/10.
//  Copyright © 2016年 com.lili. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIBarButtonItem (Extension)

+(UIBarButtonItem*)itemsWithTarget:(id)target Action:(SEL)action AndImage:(NSString *)image AndhighLightedImage:(NSString *)highlightedImage;

@end
