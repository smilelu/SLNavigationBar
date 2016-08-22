//
//  SLViewController.m
//  SLNavigationBar
//
//  Created by smilelu on 08/22/2016.
//  Copyright (c) 2016 smilelu. All rights reserved.
//

#import "SLViewController.h"
#import "SLIconViewController.h"
#import "SLTextViewController.h"

#define CellId @"SLCell"

@interface SLViewController ()<UITableViewDelegate, UITableViewDataSource>

@property (nonatomic, retain) UITableView *tableView;

@property (nonatomic, retain) NSArray *optionAry;

@end

@implementation SLViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.title = @"SLNavigationBar Demo";
    
    _optionAry = @[@"IconBarItems", @"TextBarItems"];
	
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, self.naviBar.frame.size.height, self.view.frame.size.width, self.view.frame.size.height-self.naviBar.frame.size.height)];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    
    [self.view insertSubview:_tableView belowSubview:self.naviBar];
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return self.optionAry.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:CellId];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:CellId] ;
    }
    cell.textLabel.text = _optionAry[indexPath.row];
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    if (indexPath.row == 0) {
        SLIconViewController *iconVC = [[SLIconViewController alloc] init];
        [self.navigationController pushViewController:iconVC animated:YES];
    } else {
        SLTextViewController *textVC = [[SLTextViewController alloc] init];
        [self.navigationController pushViewController:textVC animated:YES];
    }
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

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
