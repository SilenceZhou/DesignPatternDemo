//
//  ZYMapFactory.h
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ZYMapProtocol.h"
NS_ASSUME_NONNULL_BEGIN

/// 工厂标准协议
@protocol ZYMapFactory <NSObject>

// 流水线 :  基本地图、定位、导航、POI检索
// 所有地图都会遵循ZYMapProtocol
- (id<ZYMapProtocol>)getMapTool:(CGRect)frame;

@end

NS_ASSUME_NONNULL_END
