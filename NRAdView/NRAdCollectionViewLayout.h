//
//  NRAdCollectionViewLayout.h
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NRCollectionViewFlowLayoutDelegate <NSObject>

-(void)sc_collectioViewScrollToIndex:(NSInteger)index;

@end
@interface NRAdCollectionViewLayout : UICollectionViewFlowLayout
/**
 *  非当前广告的alpha值
 */
@property (nonatomic,assign) CGFloat secondaryItemMinAlpha;
/**
 *  3D缩放值，若为0，则为2D广告
 */
@property (nonatomic,assign)CGFloat threeDimensionalScale;
/**
 *   循环起始点
 */
@property (nonatomic,assign)NSInteger cycleIndex;
/**
 *  代理
 */
@property (nonatomic,assign) id<NRCollectionViewFlowLayoutDelegate>delegate;
@end
