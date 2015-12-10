//
//  UIView+CarmenLaunchAnimation.h
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CarmenLunchImageAnimationProtocol.h"

@interface UIView (CarmenLaunchAnimation)
- (void)showInWindowWithAnimation:(id<CarmenLunchImageAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion;

- (void)showInView:(UIView *)superView animation:(id<CarmenLunchImageAnimationProtocol>)animation completion:(void (^)(BOOL finished))completion;
@end
