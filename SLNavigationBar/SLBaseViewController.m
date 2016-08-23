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
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self initNaviBar];
}

- (void)initNaviBar {
    
    self.naviBar.backgroundColor = _naviBackgroundColor ? _naviBackgroundColor : [UIColor colorWithRed:50.0/255.0 green:165.0/255.0 blue:248.0/255.0 alpha:1.0];
    
    if (self.navigationController.viewControllers.count > 1) {
        self.naviBar.leftItem = [[SLBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"Frameworks/SLNavigationBar.framework/SLNavigationBar.bundle/topbar_back"] target: self action:@selector(backClick:)];
    }
}

- (SLNavigationBar *) naviBar {
    if (!_naviBar) {
        _naviBar = [[SLNavigationBar alloc] initWithFrame:CGRectMake(0, 0, self.view.bounds.size.width, 64)];
        _naviBar.slTitleLabel.text = self.title;
        [self.view addSubview:_naviBar];
    }
    return _naviBar;
}

- (void) setNaviBackgroundColor:(UIColor *)naviBackgroundColor {
    self.naviBar.backgroundColor = naviBackgroundColor;
}

- (void) setTitle:(NSString *)title {
    [super setTitle:title];
    _naviBar.slTitleLabel.text = title;
}

- (void) backClick:(id) sender {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
