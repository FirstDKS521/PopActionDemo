//
//  FirstViewController.m
//  PopAction
//
//  Created by aDu on 16/9/10.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import "FirstViewController.h"
#import "SecondViewController.h"
#import "UIViewController+BackButtonHandler.h"

@interface FirstViewController ()<UIAlertViewDelegate>

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"第一页";
    self.view.backgroundColor = [UIColor brownColor];
}

/**
 * 进入下一级页面
 */
- (IBAction)nextPage:(id)sender {
    SecondViewController *secondVC = [[SecondViewController alloc] init];
    [self.navigationController pushViewController:secondVC animated:YES];
}

/**
 * 协议中的方法，获取返回按钮的点击事件
 */
- (BOOL)navigationShouldPopOnBackButton
{
    UIAlertView *view = [[UIAlertView alloc] initWithTitle:@"是否退出" message:@"退出提示" delegate:self cancelButtonTitle:@"取消" otherButtonTitles:@"确定", nil];
    [view show];
    return NO;
}

- (void)alertView:(UIAlertView *)alertView clickedButtonAtIndex:(NSInteger)buttonIndex
{
    if (buttonIndex == 1) {
        //处理返回事件
        [self.navigationController popViewControllerAnimated:YES];
    }
}

@end
