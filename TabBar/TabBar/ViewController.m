//
//  ViewController.m
//  TabBar
//
//  Created by mac on 15/5/13.
//  Copyright (c) 2015年 mac. All rights reserved.
//

#import "ViewController.h"
#import "Test1ViewController.h"
@interface ViewController ()
@property (weak, nonatomic) IBOutlet NSLayoutConstraint *left;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.left.constant = -100;
    
    
    [[NSNotificationCenter defaultCenter] addObserver:self
                                             selector:@selector(test:)
                                                 name:@"A"
                                               object:nil];
    
}

- (void)test:(NSNotification *)notification{
    
    NSString *a =  notification.object;
    
    if ([a isEqualToString:@"C"]){
        [UIView animateWithDuration:0.5 animations:^{
            self.left.constant = -100;
            [self.view layoutIfNeeded];
        }];
    }else{
        [UIView animateWithDuration:0.5 animations:^{
            self.left.constant = 0;
            [self.view layoutIfNeeded];
        }];
    }
    
    
    
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
