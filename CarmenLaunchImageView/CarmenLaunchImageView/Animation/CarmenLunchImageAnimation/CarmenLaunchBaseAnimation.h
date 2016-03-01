//
//  CarmenLaunchBaseAnimation.h
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CarmenLunchImageAnimationProtocol.h"

@interface CarmenLaunchBaseAnimation : NSObject<CarmenLunchImageAnimationProtocol>
@property (nonatomic, assign) CGFloat duration;// duration time
@property (nonatomic, assign) CGFloat delay;   // delay hide
@property (nonatomic, assign) UIViewAnimationOptions options;
@end
