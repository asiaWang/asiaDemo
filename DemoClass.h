//
//  DemoClass.h
//  lianxi
//
//  Created by Asia wang on 14-6-29.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface DemoClass : NSObject<NSCoding>

@property (nonatomic,strong)NSDate *date;
@property (nonatomic,strong)NSString *content;

// 获取沙箱目录
+ (NSString *)pathForDocuments;


@end
