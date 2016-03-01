//
//  UIImage+CarmenLaunchImageView.m
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import "UIImage+CarmenLaunchImageView.h"

//current window
#define carmenCurrentWindow [[UIApplication sharedApplication].windows firstObject]
@implementation UIImage (CarmenLaunchImageView)

// 引用自stackflow
+(NSString *)carmen_getLuchImageName{
    NSString *viewOrientation = @"Portrait";
    if (UIInterfaceOrientationIsLandscape([[UIApplication sharedApplication] statusBarOrientation])) {
        viewOrientation = @"Landscape";
    }
    NSString *launchImageName = nil;
    NSArray* imagesDict = [[[NSBundle mainBundle] infoDictionary] valueForKey:@"UILaunchImages"];
    CGSize viewSize = carmenCurrentWindow.bounds.size;
    for (NSDictionary* dict in imagesDict)
    {
        CGSize imageSize = CGSizeFromString(dict[@"UILaunchImageSize"]);
        
        if (CGSizeEqualToSize(imageSize, viewSize) && [viewOrientation isEqualToString:dict[@"UILaunchImageOrientation"]]){
            launchImageName = dict[@"UILaunchImageName"];
        }
    }
    return launchImageName;
}

+(UIImage *)carmen_getLunchImage{
    return [UIImage imageNamed:[self carmen_getLuchImageName]];
}
@end
