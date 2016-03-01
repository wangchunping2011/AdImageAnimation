//
//  CarmenLaunchFadeScaleAnimation.m
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import "CarmenLaunchFadeScaleAnimation.h"

@implementation CarmenLaunchFadeScaleAnimation

- (instancetype)init{
    if (self = [super init]) {
        self.scale = 1.6;
        self.duration = 0.6;
        self.delay = 0.2;
        self.options = UIViewAnimationOptionCurveEaseOut;
    }
    return self;
}

- (instancetype)initWithScale:(CGFloat)scale delay:(CGFloat)delay{
    if (self = [self init]) {
        self.scale = scale;
        self.delay = delay;
    }
    return self;
}

+ (instancetype)fadeAnimationWithDelay:(CGFloat)delay{
    return [[self alloc]initWithScale:1.0 delay:delay];
}

- (void)configureAnimationWithView:(UIView *)view completion:(void (^)(BOOL))completion{
    [UIView animateWithDuration:self.duration delay:self.delay options:self.options animations:^{
        
        view.transform = CGAffineTransformMakeScale(_scale, _scale);
        view.alpha = 0.0;
        
    } completion:^(BOOL finished) {
        completion(finished);
        [view removeFromSuperview];
    }];
}
@end
