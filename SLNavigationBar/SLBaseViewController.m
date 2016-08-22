//
//  SLBaseViewController.m
//  Pods
//
//  Created by smilelu on 16/8/22.
//
//

#import "SLBaseViewController.h"

@interface SLBaseViewController ()

@end

@implementation SLBaseViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self initNaviBar];
}

- (void)initNaviBar {
    
    self.naviBar.backgroundColor = [UIColor whiteColor];
    
    if (self.navigationController.viewControllers.count > 1) {
        self.naviBar.leftItem = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"topbar_back"] target: self action:@selector(backClick:)];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
