//
//  SecondViewController.m
//  PopAction
//
//  Created by aDu on 16/9/10.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import "SecondViewController.h"

@interface SecondViewController ()

@end

@implementation SecondViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第二页";
    self.view.backgroundColor = [UIColor orangeColor];
    
    [self removeFirstVC];
}

/**
 *  从当前导航控制器中删除第一个页面，可以从第二页返回到RootVC
 */
- (void)removeFirstVC
{
    //得到当前视图控制器中的所有控制器
    NSMutableArray *array = [self.navigationController.viewControllers mutableCopy];
    //把B从里面删除
    [array removeObjectAtIndex:1];
    //把删除后的控制器数组再次赋值
    [self.navigationController setViewControllers:[array copy] animated:YES];
}

@end
