//
//  YKSortViewController.m
//  01-美团HD
//
//  Created by yake on 15-3-3.
//  Copyright (c) 2015年 yake. All rights reserved.
//

#import "YKSortViewController.h"
#import "YKSort.h"
#import <MJExtension.h>
@interface YKSortViewController ()

@end

@implementation YKSortViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = YKRandomColor;
    NSArray * dicArray = [NSArray arrayWithContentsOfFile:[[NSBundle mainBundle] pathForResource:@"sorts" ofType:@"plist"]];
    
    YKLog(@"dicArray = %@",dicArray);
}


@end
