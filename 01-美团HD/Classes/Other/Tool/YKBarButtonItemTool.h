//
//  YKBarButtonItemTool.h
//  01-美团HD
//
//  Created by yake on 15-3-2.
//  Copyright (c) 2015年 yake. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface YKBarButtonItemTool : NSObject
/**
 * 创建一个拥有两张图片的item
 * @param image       普通图片
 * @param highImage   高亮图片
 * @param target      点击item后会调用的target的action方法
 * @param action      点击item后会调用的target的action方法
 */
+ (UIBarButtonItem *)itemWithImage:(NSString *)image highImage:(NSString *)highImage target:(id)target action:(SEL)action;
@end
