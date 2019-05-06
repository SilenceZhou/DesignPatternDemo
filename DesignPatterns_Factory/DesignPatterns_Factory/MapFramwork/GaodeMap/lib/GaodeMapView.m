//
//  GaodeMapView.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "GaodeMapView.h"

@interface GaodeMapView ()
@property (nonatomic, strong) UILabel *titleLbl;
@end


@implementation GaodeMapView


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
    self.backgroundColor = [UIColor brownColor];
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
        _titleLbl.text = @"我是高德地图";
        [_titleLbl sizeToFit];
    }
    return _titleLbl;
}

@end
