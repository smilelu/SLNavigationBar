//
//  SLViewController.m
//  SLNavigationBar
//
//  Created by smilelu on 08/22/2016.
//  Copyright (c) 2016 smilelu. All rights reserved.
//

#import "SLViewController.h"
#import "SLNextViewController.h"

#define CellId @"SLCell"

@interface SLViewController ()

@property (nonatomic, retain) UIButton *nextBtn;

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"SLNavigationBar Demo";

    _nextBtn = [UIButton new];
    [_nextBtn setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    [_nextBtn setTitle:@"NextViewController" forState:UIControlStateNormal];
    [_nextBtn addTarget:self action:@selector(nextAction:) forControlEvents:UIControlEventTouchUpInside];

    [self.view insertSubview:_nextBtn belowSubview:self.naviBar];
    
    [self setLayout];
}

- (void) setLayout {
    __weak SLViewController *weakSelf = self;
    [_nextBtn mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(weakSelf.view);
    }];
}

- (void) initNaviBar {
    [super initNaviBar];
    
    //add left barButtonItem
    SLBarButtonItem *leftItem = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"titlebar_user"] target:self action:@selector(userClick:)];
    self.naviBar.leftItem = leftItem;
}

- (void) userClick:(id) sender {
    NSLog(@"%@", @"LeftBarButtonItem Click!");
}

- (void) nextAction:(UIButton *) sender {
    SLNextViewController *nextVC = [[SLNextViewController alloc] init];
    [self.navigationController pushViewController:nextVC animated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
