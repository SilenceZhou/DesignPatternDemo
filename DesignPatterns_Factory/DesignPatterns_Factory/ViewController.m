//
//  ViewController.m
//  DesignPatterns_Factory
//
//  Created by SilenceZhou on 2019/5/6.
//  Copyright © 2019 SilenceZhou. All rights reserved.
//

#import "ViewController.h"
#import "ZYGaodeMapTool.h"
#import "ZYBaiduMapTool.h"
#import "ZYBaiduMapFactory.h"
#import "ZYGaodeMapFactory.h"
#import "ZYMapEngine.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self test_protocol_factory_engin];
}


/// 工厂 + 协议 + 引擎(简单的工厂模式) : 越来越通用
- (void)test_protocol_factory_engin
{
    ZYMapEngine *engin = [[ZYMapEngine alloc] init];
    id<ZYMapFactory> factory = [engin getFactory];
    id<ZYMapProtocol> mapTool = [factory getMapTool:self.view.bounds];
    [self.view addSubview:[mapTool getView]];
    
}

// 工厂(其实也是一个协议) + 协议
- (void)test_protocol_factory
{
    /// 由于这个地方是写死了 ZYGaodeMapFactory ==> 解决方案：(简单的工厂模式)
    id<ZYMapFactory> factory = [[ZYGaodeMapFactory alloc] init];
    id<ZYMapProtocol> mapTool = [factory getMapTool:self.view.bounds];
    [self.view addSubview:[mapTool getView]];
}


/// 协议： 统一编码风格
- (void)test_useProtocol
{
    //  初始进阶
    //    ZYGaodeMapTool *mapTool = [[ZYGaodeMapTool alloc] initWithFrame:self.view.bounds];
    //    ZYBaiduMapTool *mapTool = [[ZYBaiduMapTool alloc] initWithFrame:self.view.bounds];
    
    // 换一种方式
    id<ZYMapProtocol> mapTool = [[ZYBaiduMapTool alloc] initWithFrame:self.view.bounds];
    // id<ZYMapProtocol> mapTool  = [[ZYBaiduMapTool alloc] initWithFrame:self.view.bounds];
    [self.view addSubview:[mapTool getView]];
}


@end
