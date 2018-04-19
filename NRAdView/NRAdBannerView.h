//
//  NRAdBannerView.h
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRAdView.h"

extern NSString *_Nonnull const NRAdBannerViewPlayOrPauseNotification;
extern NSString *_Nonnull const NRAdBannerViewPlayOrPauseKey;
extern NSString *_Nonnull const NRAdBannerViewTagKey;

@interface NRAdBannerView : UIView
@property (nonatomic, weak) id<NRAdViewDelegate> delegate;

- (instancetype)initWithFrame:(CGRect)frame withData:(NSArray *)arrayData withDelegate:(id<NRAdViewDelegate>)delegate;

- (void)reloadWithDataArray:(NSArray *)adArray;

@end
