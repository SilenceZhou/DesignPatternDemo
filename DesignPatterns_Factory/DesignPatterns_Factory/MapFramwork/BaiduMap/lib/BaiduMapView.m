
//
//  BaiduMapView.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "BaiduMapView.h"


@interface BaiduMapView ()
@property (nonatomic, strong) UILabel *titleLbl;
@end


@implementation BaiduMapView


- (instancetype)init
{
    self = [super init];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        [self setupUI];
    }
    return self;
}

- (void)setupUI
{
    self.backgroundColor = [UIColor blueColor];
    [self addSubview:self.titleLbl];
    
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    
    self.titleLbl.center = self.center;
}


- (UILabel *)titleLbl
{
    if (!_titleLbl) {
        _titleLbl = [[UILabel alloc] init];
        _titleLbl.textColor = [UIColor blackColor];
        _titleLbl.font = [UIFont systemFontOfSize:40];
        _titleLbl.text = @"我是百度地图";
        [_titleLbl sizeToFit];
    }
    return _titleLbl;
}

@end
