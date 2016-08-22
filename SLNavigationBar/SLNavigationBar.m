//
//  SLNavigationBar.m
//  Pods
//
//  Created by smilelu on 16/8/22.
//
//

#import "SLNavigationBar.h"

@interface SLNavigationBar()

@property (nonatomic, retain) UIView *leftView;

@property (nonatomic, retain) UIView *rightView;

@end

@implementation SLNavigationBar

- (id) init {
    self = [super init];
    if (self) {
        [self initializer];
    }
    return self;
}

- (id) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        [self initializer];
    }
    return self;
}

- (void) initializer {
    _leftView = [UIView new];
    [self addSubview:_leftView];
    
    _rightView = [UIView new];
    [self addSubview:_rightView];
    
    _slTitleView = [UIView new];
    [self addSubview:_slTitleView];
    
    _slTitleLabel = [UILabel new];
    _slTitleLabel.textColor = [UIColor whiteColor];
    _slTitleLabel.font = [UIFont systemFontOfSize:18.0];
    [self.slTitleView addSubview:_slTitleLabel];
    
    _lineView = [UIView new];
    _lineView.backgroundColor = [UIColor grayColor];
    [self addSubview:_lineView];
}

- (void) layoutSubviews {
    __weak SLNavigationBar *weakSelf = self;
    [_leftView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf).with.offset(27);
        make.left.mas_equalTo(weakSelf);
        make.height.mas_equalTo(@30);
    }];
    
    [_rightView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf).with.offset(27);
        make.height.mas_equalTo(@30);
        make.right.mas_equalTo(weakSelf);
    }];
    
    [_slTitleView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(weakSelf).with.offset(27);
        make.centerX.mas_equalTo(weakSelf);
        make.left.mas_greaterThanOrEqualTo(weakSelf.leftView.mas_right);
        make.right.mas_greaterThanOrEqualTo(weakSelf.rightView.mas_left);
        make.height.mas_equalTo(@30);
    }];
    
    [_slTitleLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.mas_equalTo(weakSelf.slTitleView);
    }];
    
    [_lineView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.height.mas_equalTo(@0.5);
        make.left.right.bottom.mas_equalTo(weakSelf);
    }];
    
}

- (void) setLeftItem:(UIView *)leftItem {
    for(UIView *v in [self.leftView subviews]) {
        [v removeFromSuperview];
    }
    [self.leftView addSubview:leftItem];
    
    [self layoutIfNeeded];
    __weak SLNavigationBar *weakSelf = self;
    [leftItem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(weakSelf.leftView);
        make.width.mas_greaterThanOrEqualTo(@30);
        make.left.mas_equalTo(weakSelf.leftView).with.offset(8);
        make.right.mas_equalTo(weakSelf.leftView).with.offset(-8);
    }];
}

- (void) setLeftItems:(NSArray *)leftItems {
    for(UIView *v in [self.leftView subviews]) {
        [v removeFromSuperview];
    }
    
    __weak SLNavigationBar *weakSelf = self;
    for (int i = 0; i < leftItems.count; i++) {
        UIView *v = leftItems[i];
        [self.leftView addSubview:v];
        [self layoutIfNeeded];
        [v mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(weakSelf.leftView);
            make.width.mas_greaterThanOrEqualTo(@30);
            make.left.mas_equalTo(i > 0?((UIView *)leftItems[i-1]).mas_right:weakSelf.leftView).with.offset(8);
            if (i == leftItems.count - 1) {
                make.right.mas_greaterThanOrEqualTo(weakSelf.leftView);
            }
        }];
    }
}

- (void) setRightItem:(UIView *)rightItem {
    for(UIView *v in [self.rightView subviews]) {
        [v removeFromSuperview];
    }
    [self.rightView addSubview:rightItem];
    
    [self layoutIfNeeded];
    __weak SLNavigationBar *weakSelf = self;
    [rightItem mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.bottom.mas_equalTo(weakSelf.rightView);
        make.width.mas_greaterThanOrEqualTo(@30);
        make.right.mas_equalTo(weakSelf.rightView).with.offset(-8);
        make.left.mas_equalTo(weakSelf.rightView).with.offset(8);
    }];
}

- (void) setRightItems:(NSArray *)rightItems {
    for(UIView *v in [self.rightView subviews]) {
        [v removeFromSuperview];
    }
    
    __weak SLNavigationBar *weakSelf = self;
    for (int i = 0; i < rightItems.count; i++) {
        UIView *v = rightItems[i];
        [self.rightView addSubview:v];
        
        [self layoutIfNeeded];
        [v mas_makeConstraints:^(MASConstraintMaker *make) {
            make.top.bottom.mas_equalTo(weakSelf.leftView);
            make.width.mas_greaterThanOrEqualTo(@30);
            make.right.mas_equalTo(i > 0?((UIView *)rightItems[i-1]).mas_left:weakSelf.rightView).with.offset(-8);
            if (i == rightItems.count - 1) {
                make.left.mas_greaterThanOrEqualTo(weakSelf.rightView);
            }
        }];
    }
    
}


@end
