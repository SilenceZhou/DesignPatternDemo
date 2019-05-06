//
//  ZYBaiduMapTool.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "ZYBaiduMapTool.h"
#import "BaiduMapView.h"


@interface ZYBaiduMapTool ()
@property (nonatomic, strong) BaiduMapView *mapView;
@end


@implementation ZYBaiduMapTool

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        self.mapView = [[BaiduMapView alloc] initWithFrame:frame];
    }

    return self;
}

- (UIView *)getView
{
    return self.mapView;
}

@end
