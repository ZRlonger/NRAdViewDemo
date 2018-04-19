//
//  ViewController.m
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import "ViewController.h"
#import "NRAdBannerView.h"

@interface ViewController ()<NRAdViewDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSMutableArray *arrayImgs = [NSMutableArray array];
    [arrayImgs addObject:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524128109943&di=5471d58389061895ad7390d3ed4586ed&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fblog%2F201407%2F10%2F20140710090222_VJHQ2.thumb.700_0.gif"];
    [arrayImgs addObject:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524128109939&di=e3c30664e8d6b0a22005c0ad578e4de4&imgtype=0&src=http%3A%2F%2Fimg3.duitang.com%2Fuploads%2Fitem%2F201412%2F02%2F20141202155332_22JTk.gif"];
    [arrayImgs addObject:@"https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1524128110509&di=752144f5df511ccb3a871b31b9672518&imgtype=0&src=http%3A%2F%2Fimg5.duitang.com%2Fuploads%2Fblog%2F201412%2F04%2F20141204184751_NAH3T.thumb.700_0.gif"];
    NRAdBannerView *bannerView = [[NRAdBannerView alloc] initWithFrame:CGRectMake(0, 50, self.view.bounds.size.width, 179)
                                                              withData:arrayImgs
                                                          withDelegate:self];
    [self.view addSubview:bannerView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark NRAdViewDelegate
-(void)nr_scrollToIndex:(NSInteger)index
{

}

-(void)nr_didClickAd:(id)adModel
{

}

@end
