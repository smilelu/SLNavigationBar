//
//  SLTextViewController.m
//  SLNavigationBar
//
//  Created by smilelu on 16/8/22.
//  Copyright © 2016年 Smilelu. All rights reserved.
//

#import "SLTextViewController.h"

@interface SLTextViewController ()

@end

@implementation SLTextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"TextViewController";
}

- (void) initNaviBar {
    //Default Indicator LeftBarButtonItem
    [super initNaviBar];
    
    SLBarButtonItem *rightItem1 = [[SLBarButtonItem alloc] initWithTitle:@"编辑"target:self action:@selector(rightItemClick:)];
    SLBarButtonItem *rightItem2 = [[SLBarButtonItem alloc] initWithTitle:@"删除" target:self action:@selector(rightItemClick:)];
    self.naviBar.rightItems = @[rightItem1, rightItem2];
}

- (void) rightItemClick:(id) sender {
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
