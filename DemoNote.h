//
//  DemoNote.h
//  lianxi
//
//  Created by Asia wang on 14-6-29.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "DemoClass.h"

@interface DemoNote : NSObject

+ (DemoNote *)shardManger;

- (NSString *)applicateionDocumentsDirectotyFile;
- (void)createEditableCopyOfDatebaseIfNeeded;

// 插入备忘录的方法
- (int)creat:(DemoClass *)demo;

// 删除备忘录的方法
- (int)remove:(DemoClass *)demo;

// 修改备忘录
- (int)modify:(DemoClass *)demo;

// 车讯所有数据方法
- (NSMutableArray *)findAll;

// 按照主键查询数据方法
- (DemoClass *)findById:(DemoClass *)demo;

@end
