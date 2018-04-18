//
//  NRAdBannerView.m
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import "NRAdBannerView.h"

@interface NRAdBannerView()
@property(nonatomic, strong) NRAdView *adView;
@end;

@implementation NRAdBannerView

- (instancetype)initWithFrame:(CGRect)frame withData:(NSArray*)arrayData
{
    self = [super initWithFrame:frame];
    if (self) {
        NRAdView *adView = [[NRAdView alloc] initWithBuilder:^(NRAdViewBuilder *builder) {
            builder.adArray = arrayData;
            builder.viewFrame = frame;
            builder.adItemSize = (CGSize){frame.size.width*(670/750.0)*(1/1.1),frame.size.width*(670/750.0)*0.9*(306/670.0) };
            builder.minimumLineSpacing = 10;
            builder.secondaryItemMinAlpha = 0.6;
            builder.threeDimensionalScale = 1.1;
            builder.itemCellClassName = @"NRAdCollectionViewCell";
        }];
        adView.backgroundColor = [UIColor colorWithWhite:0.95 alpha:0.2];
        adView.delegate = self;
        _adView = adView;
        [self addSubview:adView];
        self.backgroundColor = [UIColor grayColor];
    }
    return self;
}

#pragma mark scAdViewDelegate
-(void)sc_scrollToIndex:(NSInteger)index
{
    
}

-(void)sc_didClickAd:(id)adModel
{
    
}

@end
