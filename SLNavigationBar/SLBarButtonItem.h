//
//  SLBarButtonItem.h
//  Micfunding
//
//  Created by smilelu on 16/8/13.
//  Copyright © 2016年 smilelu. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SLBarButtonItem : UIButton

- (nullable id) initWithImage:(nullable UIImage *) image target:(nullable id)target action:(nullable SEL) action;

- (nullable id) initWithTitle:(NSString * __nonnull) title target:(nullable id)target action:(nullable SEL) action;

@end
