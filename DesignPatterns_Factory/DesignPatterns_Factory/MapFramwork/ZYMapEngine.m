//
//  ZYMapEngine.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "ZYMapEngine.h"
#import "ZYBaiduMapFactory.h"

@implementation ZYMapEngine

- (id<ZYMapFactory>)getFactory
{
    // TODO : 最终用哪个可以用 宏来控制 或者 后台下发数据来控制
    
    return [[ZYBaiduMapFactory alloc] init];
}
@end
