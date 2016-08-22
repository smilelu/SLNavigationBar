//
//  SLIconViewController.m
//  SLNavigationBar
//
//  Created by smilelu on 16/8/22.
//  Copyright © 2016年 Smilelu. All rights reserved.
//

#import "SLIconViewController.h"

@interface SLIconViewController ()

@end

@implementation SLIconViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"IconViewController";
}

- (void) initNaviBar {
    //Default Indicator LeftBarButtonItem
    [super initNaviBar];
    
    SLBarButtonItem *rightItem1 = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"titlebar_more"] target:self action:@selector(rightItemClick:)];
    SLBarButtonItem *rightItem2 = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"titlebar_scan"] target:self action:@selector(rightItemClick:)];
    self.naviBar.rightItems = @[rightItem1, rightItem2];
}

- (void) rightItemClick:(id) sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
