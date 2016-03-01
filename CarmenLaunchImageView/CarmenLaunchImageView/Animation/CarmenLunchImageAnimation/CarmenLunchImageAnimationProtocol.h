//
//  CarmenLunchImageAnimationProtocol.h
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@protocol CarmenLunchImageAnimationProtocol <NSObject>
- (void)configureAnimationWithView:(UIView *)view completion:(void(^)(BOOL finished))completion;
@end
