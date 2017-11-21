//
//  LeftSideViewController.m
//  TabBar
//
//  Created by mac on 15/5/13.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "LeftSideViewController.h"

@interface LeftSideViewController ()

@end

@implementation LeftSideViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(test1)];
    
    [self.view addGestureRecognizer:tap];
    
}

- (void)test1{
    [[NSNotificationCenter defaultCenter] postNotificationName:@"A" object:@"C"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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
