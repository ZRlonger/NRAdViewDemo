//
//  ViewController.m
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import "ViewController.h"
#import "NRAdBannerView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NRAdBannerView *bannerView = [[NRAdBannerView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 179) withData:@[@"http://seopic.699pic.com/photo/50050/5473.jpg_wh1200.jpg",
                                                                                                                    @"http://seopic.699pic.com/photo/50050/5473.jpg_wh1200.jpg",
                                                                                                                    @"http://seopic.699pic.com/photo/50050/5473.jpg_wh1200.jpg"]];
    [self.view addSubview:bannerView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
