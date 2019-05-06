//
//  ZYBaiduMapFactory.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "ZYBaiduMapFactory.h"
#import "ZYBaiduMapTool.h"

@implementation ZYBaiduMapFactory


- (id<ZYMapProtocol>)getMapTool:(CGRect)frame
{
    return [[ZYBaiduMapTool alloc] initWithFrame:frame];
    
}
@end
