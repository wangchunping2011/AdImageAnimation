//
//  AdImageView.h
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface AdImageView : UIImageView
@property(strong, nonatomic)NSString *urlString;

@property (nonatomic, copy)void (^clickedImageURLHandle)(NSString *urlString);
@end
