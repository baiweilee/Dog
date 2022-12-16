//
//  DOGViewController.m
//  Dog
//
//  Created by 李开强 on 2022/11/10.
//  Copyright © 2022 李开强. All rights reserved.
//

#import "DOGViewController.h"
#import "CATViewController.h"

@interface DOGViewController ()

@end

@implementation DOGViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"Dog";
    
    UIButton* btn = [UIButton buttonWithType:(UIButtonTypeRoundedRect)];
    btn.frame = CGRectMake(100, 100, 100, 100);
    btn.backgroundColor = [UIColor redColor];
    [btn addTarget:self action:@selector(pushVC) forControlEvents:(UIControlEventTouchUpInside)];
    [self.view addSubview:btn];
    
    
    // Do any additional setup after loading the view.
}

- (void)pushVC {
    CATViewController* catVC = [[CATViewController alloc] init];
    [self.navigationController pushViewController:catVC animated:YES];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
