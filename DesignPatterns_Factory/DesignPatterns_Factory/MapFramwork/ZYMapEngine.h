//
//  ZYMapEngine.h
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYMapFactory.h"

NS_ASSUME_NONNULL_BEGIN

/// 地图引擎类： 用于管理地图工厂(生产地图工厂)
@interface ZYMapEngine : NSObject

/// 规范： 不知道具体工厂是哪个，但是知道工厂标准 - ZYMapFactory

- (id<ZYMapFactory>)getFactory;


@end

NS_ASSUME_NONNULL_END
