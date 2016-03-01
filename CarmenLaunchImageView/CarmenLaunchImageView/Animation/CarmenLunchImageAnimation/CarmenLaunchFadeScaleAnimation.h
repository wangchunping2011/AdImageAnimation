//
//  CarmenLaunchFadeScaleAnimation.h
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import "CarmenLaunchBaseAnimation.h"

@interface CarmenLaunchFadeScaleAnimation : CarmenLaunchBaseAnimation

@property (nonatomic, assign) CGFloat scale;   // scale ratio default 1.6

+ (instancetype)fadeAnimationWithDelay:(CGFloat)delay;
@end
