//
//  NRAdBannerView.h
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NRAdView.h"

@interface NRAdBannerView : UIView<NRAdViewDelegate>
- (instancetype)initWithFrame:(CGRect)frame withData:(NSArray*)arrayData;
@end
