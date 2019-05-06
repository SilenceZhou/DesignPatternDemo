//
//  ZYMapProtocol.h
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

// 地图协议标准
@protocol ZYMapProtocol <NSObject>


- (UIView *)getView;

- (instancetype)initWithFrame:(CGRect)frame;



@end

NS_ASSUME_NONNULL_END
