//
//  ZYGaodeMapFactory.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "ZYGaodeMapFactory.h"
#import "ZYGaodeMapTool.h"

@implementation ZYGaodeMapFactory

- (id<ZYMapProtocol>)getMapTool:(CGRect)frame
{
    return [[ZYGaodeMapTool alloc] initWithFrame:frame];
    
}
@end
