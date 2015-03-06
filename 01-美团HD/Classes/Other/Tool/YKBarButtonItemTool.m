//
//  YKBarButtonItemTool.m
//  01-美团HD
//
//  Created by yake on 15-3-2.
//  Copyright (c) 2015年 yake. All rights reserved.
//

#import "YKBarButtonItemTool.h"

@implementation YKBarButtonItemTool

+ (UIBarButtonItem *)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action
{
    UIButton * button = [[UIButton alloc] init];
    [button setImage:[UIImage imageNamed:image] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:highImage] forState:UIControlStateHighlighted];
    [button addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    button.mj_size = button.currentImage.size;
    return  [[UIBarButtonItem alloc] initWithCustomView:button];
}
@end
