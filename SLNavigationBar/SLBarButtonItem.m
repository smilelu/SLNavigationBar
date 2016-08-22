//
//  SLBarButtonItem.m
//  Micfunding
//
//  Created by smilelu on 16/8/13.
//  Copyright © 2016年 smilelu. All rights reserved.
//

#import "SLBarButtonItem.h"
#import "SLBaseViewController.h"

@implementation SLBarButtonItem

- (id) initWithImage:(UIImage *) image target:(nullable id)target action:(nullable SEL) action {
    self = [super init];
    if (self) {
        [self setImage:image forState:UIControlStateNormal];
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

- (id) initWithTitle:(NSString *) title target:(nullable id)target action:(nullable SEL) action {
    self = [super init];
    if (self) {
        self.titleLabel.font = [UIFont systemFontOfSize:14.0];
        [self setTitle:title forState:UIControlStateNormal];
        [self setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        [self setTitleColor:[[UIColor whiteColor] colorWithAlphaComponent:0.5] forState:UIControlStateHighlighted];
        [self addTarget:target action:action forControlEvents:UIControlEventTouchUpInside];
    }
    return self;
}

//- (UIViewController *)findViewController:(UIView *)sourceView
//{
//    id target=sourceView;
//    while (target) {
//        target = ((UIResponder *)target).nextResponder;
//        if ([target isKindOfClass:[SLBaseViewController class]]) {
//            break;
//        }
//    }
//    return target;
//}

@end
