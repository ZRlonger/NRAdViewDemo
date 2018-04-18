//
//  NRAdViewRenderDelegate.m
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import <Foundation/Foundation.h>
@protocol NRAdViewRenderDelegate <NSObject>
@required
/**
 *  @brief 通过实现此代理为view或者cell来设置
 */
-(void)setModel:(id)model;
@end
