//
//  SLNextViewController.m
//  SLNavigationBar
//
//  Created by smilelu on 16/8/23.
//  Copyright © 2016年 Smilelu. All rights reserved.
//

#import "SLNextViewController.h"

@interface SLNextViewController ()

@property (nonatomic, retain) UIButton *titleStyleBtn;

@property (nonatomic, retain) UIButton *imageStyleBtn;

@property (nonatomic, retain) UIButton *clearItemsBtn;

@end

@implementation SLNextViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.title = @"NextViewController";
    
    _titleStyleBtn = [UIButton new];
    [_titleStyleBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_titleStyleBtn setTitle:@"TitleStyle" forState:UIControlStateNormal];
    [_titleStyleBtn addTarget:self action:@selector(titleStyleAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_titleStyleBtn];
    
    _imageStyleBtn = [UIButton new];
    [_imageStyleBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_imageStyleBtn setTitle:@"ImageStyle" forState:UIControlStateNormal];
    [_imageStyleBtn addTarget:self action:@selector(imageStyleAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_imageStyleBtn];
    
    _clearItemsBtn = [UIButton new];
    [_clearItemsBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_clearItemsBtn setTitle:@"ClearItems" forState:UIControlStateNormal];
    [_clearItemsBtn addTarget:self action:@selector(clearItemsAction:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:_clearItemsBtn];
    
    [self setLayout];
}

- (void) setLayout {
    __weak SLNextViewController *weakSelf = self;
    [_titleStyleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.view).with.offset(100);
        make.centerX.mas_equalTo(weakSelf.view);
    }];
    
    [_imageStyleBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.titleStyleBtn.mas_bottom).with.offset(10);
        make.centerX.mas_equalTo(weakSelf.view);
    }];
    
    [_clearItemsBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf.imageStyleBtn.mas_bottom).with.offset(10);
        make.centerX.mas_equalTo(weakSelf.view);
    }];
}

- (void) titleStyleAction:(UIButton *) sender {
    SLBarButtonItem *rightItem1 = [[SLBarButtonItem alloc] initWithTitle:@"编辑"target:self action:@selector(rightItemClick:)];
    SLBarButtonItem *rightItem2 = [[SLBarButtonItem alloc] initWithTitle:@"删除" target:self action:@selector(rightItemClick:)];
    self.naviBar.rightItems = @[rightItem1, rightItem2];
}

- (void) imageStyleAction:(UIButton *) sender {
    SLBarButtonItem *rightItem1 = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"titlebar_more"] target:self action:@selector(rightItemClick:)];
    SLBarButtonItem *rightItem2 = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"titlebar_scan"] target:self action:@selector(rightItemClick:)];
    self.naviBar.rightItems = @[rightItem1, rightItem2];
}

- (void) clearItemsAction:(UIButton *) sender  {
    self.naviBar.rightItems = nil;
}

- (void) rightItemClick:(SLBarButtonItem *) sender {
    //Add Click Action
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
