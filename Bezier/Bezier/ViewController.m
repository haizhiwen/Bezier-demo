//
//  ViewController.m
//  Bezier
//
//  Created by 王亚军 on 2017/5/6.
//  Copyright © 2017年 王亚军. All rights reserved.
//

#import "ViewController.h"
#import "BaseView.h"

#define SCREEN_WIDTH [[UIScreen mainScreen] bounds].size.width
#define SCREEN_HEIGHT [[UIScreen mainScreen] bounds].size.height

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    BaseView * view = [[BaseView alloc] init];
    view.frame = CGRectMake(10, 80,SCREEN_WIDTH - 20, SCREEN_HEIGHT- 100);
    
    view.backgroundColor = [UIColor blackColor];
    [self.view addSubview:view];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
