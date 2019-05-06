//
//  ZYGaodeMapTool.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "ZYGaodeMapTool.h"
#import "GaodeMapView.h"


@interface ZYGaodeMapTool ()
@property (nonatomic, strong) GaodeMapView *mapView;
@end


@implementation ZYGaodeMapTool

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super init];
    if (self) {
        self.mapView = [[GaodeMapView alloc] initWithFrame:frame];
    }
    
    return self;
}

- (UIView *)getView
{
    return self.mapView;
}

@end
