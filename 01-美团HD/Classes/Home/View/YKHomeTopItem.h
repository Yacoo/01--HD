//
//  YKHomeTopItem.h
//  01-美团HD
//
//  Created by yake on 15-3-2.
//  Copyright (c) 2015年 yake. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YKHomeTopItem : UIView
+ (instancetype)item;
/**标题*/
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
/**子标题*/
@property (weak, nonatomic) IBOutlet UILabel *subTitleLabel;
/**图标按钮*/
@property (weak, nonatomic) IBOutlet UIButton *iconButton;

@end
