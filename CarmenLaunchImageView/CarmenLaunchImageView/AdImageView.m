//
//  AdImageView.m
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/10.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import "AdImageView.h"
@interface AdImageView(){
    UIImageView * _adImageView;
}
@end
@implementation AdImageView

- (instancetype)init{
    if (self = [super init]) {
        
    }
    return self;
}

- (instancetype)initWithImage:(UIImage *)image{
    if (self = [super initWithImage:image]) {
        [self addAdImageVIew];
        [self addSingleTapGesture];
    }
    return self;
}

- (void)addAdImageVIew{
    UIImageView *adImageView = [[UIImageView alloc]init];
    [self addSubview:adImageView];
    _adImageView = adImageView;
}
- (void)addSingleTapGesture{
    UITapGestureRecognizer *singleTap = [[UITapGestureRecognizer alloc]initWithTarget:self action:@selector(singleTapGesture:)];
    [self addGestureRecognizer:singleTap];
}

- (void)setUrlString:(NSString *)urlString{
    _urlString = urlString;
    dispatch_async(dispatch_get_global_queue(DISPATCH_QUEUE_PRIORITY_DEFAULT, 0), ^{
        NSData *data = [NSData dataWithContentsOfURL:[NSURL URLWithString:urlString]];
        
        dispatch_async(dispatch_get_main_queue(), ^{
            _adImageView.image = [UIImage imageWithData:data];
            _adImageView.alpha = 0.0;
            [UIView animateWithDuration:0.3 delay:.6 options:UIViewAnimationOptionCurveEaseOut animations:^{
                _adImageView.alpha = 1.0;
            } completion:nil];
        });
    });
}

- (void)singleTapGesture:(UITapGestureRecognizer *)recognizer{
    if (self.clickedImageURLHandle) {
        self.clickedImageURLHandle(self.urlString);
    }
    if (self.superview) {
        [self removeFromSuperview];
    }
}

- (UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event{
    if (self.hidden == NO && _adImageView.alpha > 0 && CGRectContainsPoint(_adImageView.frame, point)) {
        return self;
    }
    return nil;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    _adImageView.frame = CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame)*0.78);
}
@end
