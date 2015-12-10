//
//  UIView+CarmenLaunchAnimation.m
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import "UIView+CarmenLaunchAnimation.h"
#define carmenCurrentWindow [[UIApplication sharedApplication].windows firstObject]

@implementation UIView (CarmenLaunchAnimation)

- (void)showInWindowWithAnimation:(id<CarmenLunchImageAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion{
    [self showInView:carmenCurrentWindow animation:animation completion:completion];
}

- (void)showInView:(UIView *)superView animation:(id<CarmenLunchImageAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion{
    if (!superView) {
        return;
    }
    
    superView.hidden = NO;
    [superView addSubview:self];
    [superView bringSubviewToFront:self];
    self.frame = superView.bounds;
    
    if (animation && [animation respondsToSelector:@selector(configureAnimationWithView:completion:)]) {
        [animation configureAnimationWithView:self completion:completion];
    }else {
        completion(YES);
    }
}
@end
