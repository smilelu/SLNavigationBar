//
//  SLNavigationBar.h
//  Pods
//
//  Created by smilelu on 16/8/22.
//
//

#import <UIKit/UIKit.h>
#import "Masonry.h"

@interface SLNavigationBar : UIView

@property (nonatomic, retain) UIView *slTitleView;

@property (nonatomic, retain) UILabel *slTitleLabel;

@property (nonatomic, retain) UIView *lineView;

@property (nonatomic, retain) UIView *leftItem;

@property (nonatomic, retain) NSArray *leftItems;

@property (nonatomic, retain) UIView *rightItem;

@property (nonatomic, retain) NSArray *rightItems;

@end
