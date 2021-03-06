//
//  YKHomeViewController.m
//  01-美团HD
//
//  Created by yake on 15-3-2.
//  Copyright (c) 2015年 yake. All rights reserved.
//

#import "YKHomeViewController.h"
#import "YKBarButtonItemTool.h"

@interface YKHomeViewController ()

@end

@implementation YKHomeViewController

static NSString * const reuseIdentifier = @"Cell";
#pragma mark - 初始化方法
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    //使用storyboard创建已经有布局了，collection view flow layout,没有布局会直接崩溃的
    // self.view是self.collectionview的父视图
    self.collectionView.backgroundColor = YKColor(230, 230, 230);
    
    // 设置导航栏左边
    [self setupNavLeft];
    //设置导航栏右边
    [self setupNavRight];
}
/**
 * 设置导航栏左边
 */
- (void)setupNavLeft
{
//    UIImage * image = [UIImage imageNamed:@"icon_meituan_logo"];
//    image = [image imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    //只如下写法美团logo是蓝色，图片被渲染了，为避免这种情况有两种方法，第一，添加如上代码， 第二，在图片设置中选择 render as origin.
    self.navigationItem.leftBarButtonItem = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"icon_meituan_logo"] style:UIBarButtonItemStylePlain target:nil action:nil];
}

/**
 *设置导航栏右边
 */
- (void)setupNavRight
{
   // UIImageView也有高亮图片
    //search
    
    UIBarButtonItem * searchItem = [YKBarButtonItemTool itemWithImage:@"icon_search" highImage:@"icon_search_highlighted" target:self action:@selector(searchClick)];
    searchItem.customView.mj_width = 50;
    
    //map
    
     UIBarButtonItem * mapItem = [YKBarButtonItemTool itemWithImage:@"icon_map" highImage:@"icon_map_highlighted" target:self action:@selector(mapClick)];
    mapItem.customView.mj_width = 50;
    self.navigationItem.rightBarButtonItems = @[mapItem,searchItem];
}
#pragma mark - 导航栏事件处理
/**
 * 点击搜索
 */
- (void)searchClick
{
    YKLog(@"searchClick");
}
/**
 * 点击地图
 */
- (void)mapClick
{
    YKLog(@"mapClick");
}
#pragma mark <UICollectionViewDataSource>

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 0;
}


- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {

    return 0;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    UICollectionViewCell *cell = [collectionView dequeueReusableCellWithReuseIdentifier:reuseIdentifier forIndexPath:indexPath];
    
    // Configure the cell
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
