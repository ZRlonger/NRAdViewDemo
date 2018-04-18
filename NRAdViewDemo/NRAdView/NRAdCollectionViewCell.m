//
//  NRAdCollectionViewCell.m
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import "NRAdCollectionViewCell.h"
#import <UIImageView+WebCache.h>

@interface NRAdCollectionViewCell()
@property (nonatomic, strong) UIImageView *imgv;
@end

@implementation NRAdCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        _imgv = [[UIImageView alloc] initWithFrame:self.bounds];
        _imgv.backgroundColor = [UIColor greenColor];
        _imgv.contentMode = UIViewContentModeScaleAspectFill;
        _imgv.layer.masksToBounds = YES;
        _imgv.layer.cornerRadius = 10;
        _imgv.layer.shadowColor = [UIColor colorWithRed:25/255.0f green:181/255.0f blue:254/255.0f alpha:1.0f].CGColor;
        _imgv.layer.shadowOpacity = 0.4;
        _imgv.layer.shadowRadius = 6.0f;
        _imgv.layer.shadowOffset = CGSizeMake(2, 2);
        [self.contentView addSubview:_imgv];
    }
    return self;
}

-(void)setModel:(id)model{
    [_imgv sd_setImageWithURL:[NSURL URLWithString:model]];
}
@end
