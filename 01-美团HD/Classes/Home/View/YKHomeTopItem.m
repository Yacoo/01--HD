//
//  YKHomeTopItem.m
//  01-美团HD
//
//  Created by yake on 15-3-2.
//  Copyright (c) 2015年 yake. All rights reserved.
//

#import "YKHomeTopItem.h"

@interface YKHomeTopItem()

@end

@implementation YKHomeTopItem

+ (instancetype)item
{
    return [[[NSBundle mainBundle] loadNibNamed:@"YKHomeTopItem" owner:nil options:nil] firstObject];
}

- (void)awakeFromNib
{
    self.autoresizingMask = UIViewAutoresizingNone;
    //要不要将autoresizingmask里面的设置转为约束
   // self.translatesAutoresizingMaskIntoConstraints = NO;
}
@end
