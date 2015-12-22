//
//  ADDetailsViewController.m
//  CarmenLaunchImageView
//
//  Created by macmimi on 15/12/22.
//  Copyright © 2015年 Carmen. All rights reserved.
//

#import "ADDetailsViewController.h"

@interface ADDetailsViewController ()<UIWebViewDelegate>
@property (weak, nonatomic) IBOutlet UIWebView *wb;

@end

@implementation ADDetailsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:self.urlStr]];
    [self.wb loadRequest:request];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
