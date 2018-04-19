//
//  NRAdCollectionViewCell.m
//  NRAdViewDemo
//
//  Created by BabyBus on 2018/4/18.
//  Copyright © 2018年 Longer. All rights reserved.
//

#import "NRAdCollectionViewCell.h"
#import "UIImageView+WebCache.h"

@interface NRAdCollectionViewCell()
@property (nonatomic, strong) UIImageView *imgv;
@property (nonatomic, strong) UIView *bgView;
@end

@implementation NRAdCollectionViewCell

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        _bgView = [[UIView alloc] initWithFrame:self.bounds];
        _bgView.backgroundColor = [UIColor whiteColor];
        _bgView.layer.masksToBounds = YES;
        _bgView.layer.cornerRadius = 10;
        _bgView.layer.shadowColor = [UIColor colorWithRed:25/255.0f green:181/255.0f blue:254/255.0f alpha:1.0f].CGColor;
        _bgView.layer.shadowOpacity = 0.4;
        _bgView.layer.shadowRadius = 2.0f;
        _bgView.layer.shadowOffset = CGSizeMake(2, 2);
        [self.contentView addSubview:_bgView];
        
        _imgv = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, self.frame.size.width-0, self.frame.size.height-0)];
        _imgv.backgroundColor = [UIColor greenColor];
        _imgv.contentMode = UIViewContentModeScaleAspectFill;
        _imgv.layer.masksToBounds = YES;
        _imgv.layer.cornerRadius = 10;
        [self.contentView addSubview:_imgv];
        
        self.clipsToBounds =NO;
        self.bgView.clipsToBounds =NO;
    }
    return self;
}

-(void)setModel:(id)model{
    UIImage *placeholder = [UIImage imageNamed:@"NRAdViewResources.bundle/AdDefaults/nradview_default@2x.png"];
    [_imgv sd_setImageWithURL:[NSURL URLWithString:model] placeholderImage:placeholder];
}
@end
