//
//  RootViewController.m
//  PopAction
//
//  Created by aDu on 16/9/10.
//  Copyright © 2016年 DuKaiShun. All rights reserved.
//

#import "RootViewController.h"
#import "FirstViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"RootVC";
    self.view.backgroundColor = [UIColor whiteColor];
}

/**
 * 进入下一个VC
 */
- (IBAction)nextPage:(id)sender {
    FirstViewController *firstVC = [[FirstViewController alloc] init];
    [self.navigationController pushViewController:firstVC animated:YES];
}

@end
