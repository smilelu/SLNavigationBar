//
//  SLBaseViewController.h
//  Pods
//
//  Created by smilelu on 16/8/22.
//
//

#import <UIKit/UIKit.h>
#import "SLNavigationBar.h"
#import "SLBarButtonItem.h"

@interface SLBaseViewController : UIViewController

@property (nonatomic, retain) SLNavigationBar *naviBar;

@property (nonatomic, retain) UIColor *naviBackgroundColor;

-(void)initNaviBar;

- (void) backClick:(id) sender;

@end
