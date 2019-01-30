//
//  NSViewController.m
//  ModuleB
//
//  Created by NShunJian on 01/30/2019.
//  Copyright (c) 2019 NShunJian. All rights reserved.
//

#import "NSViewController.h"
#import "PageBViewController.h"

@interface NSViewController ()

@end

@implementation NSViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.title = @"我是ModuleB";
    UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
    btn.frame = CGRectMake(0, 0, 300, 100);
    btn.backgroundColor = [UIColor greenColor];
    btn.center = self.view.center;
    [btn setTitle:@"模块B业务功能组件" forState: UIControlStateNormal];
    [btn addTarget:self action:@selector(push) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btn];
}

- (void)push {
    PageBViewController *VC = [[PageBViewController alloc] init];
    [self.navigationController pushViewController:VC animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
