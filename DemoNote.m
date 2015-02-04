//
//  DemoNote.m
//  lianxi
//
//  Created by Asia wang on 14-6-29.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "DemoNote.h"

static DemoNote *sharedManger = nil;

@implementation DemoNote


+ (DemoNote *)shardManger
{
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedManger = [[self alloc] init];
        [sharedManger createEditableCopyOfDatebaseIfNeeded];
        
    });
    return sharedManger;
}

// 获得沙箱的完整路径

- (NSString *)applicateionDocumentsDirectotyFile{
    NSString *decumentDirectory = [NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES) lastObject];
    NSString *path = [decumentDirectory stringByAppendingPathComponent:@"demo.plist"];
    return path;
    
}
// 判断是否在document下存在demo.plist文件，如果不存在就复制一个
- (void)createEditableCopyOfDatebaseIfNeeded{
    NSFileManager *fileManger = [NSFileManager defaultManager];
    NSString *writeTableDBpath = [self applicateionDocumentsDirectotyFile];
    BOOL dbexits = [fileManger fileExistsAtPath:writeTableDBpath];
    if (!dbexits) {
        NSString *defaultDBPath = [[[NSBundle mainBundle]resourcePath] stringByAppendingPathComponent:@"demo.plist"];
        NSError *error;
        BOOL success = [fileManger copyItemAtPath:defaultDBPath toPath:writeTableDBpath error:&error];
        if (!success) {
            NSAssert1(0, @"错误写入文件:'%@'。", [error localizedDescription]);
        }
    }
}

// 插入备忘录的方法
- (int)creat:(DemoClass *)demo{
    NSString *path = [self applicateionDocumentsDirectotyFile];
    NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
    NSDateFormatter *dateFormat = [[NSDateFormatter alloc]init];
    [dateFormat setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
    
    NSDictionary *dict = [NSDictionary dictionaryWithObjects:@[[dateFormat stringFromDate:demo.date],demo.content ] forKeys:@[@"date",@"contenct"]];
    [array addObject:dict];
    [array writeToFile:path atomically:YES];
    return 0;
}

// 删除备忘录的方法
- (int)remove:(DemoClass *)demo{
    NSString *path = [self applicateionDocumentsDirectotyFile];
    NSMutableArray *array = [[NSMutableArray alloc] initWithContentsOfFile:path];
    for (NSDictionary *dict in array) {
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateFormat:@"yyyy-MM-dd HH:mm:ss"];
        NSDate *date = [dateFormatter dateFromString:[dict objectForKey:@"date"]];
        
        if ([date isEqualToDate:demo.date]) {
            [array removeObject:dict];
            [array writeToFile:path atomically:YES];
            break;
        }
    }
    return 0;
}

// 修改备忘录
- (int)modify:(DemoClass *)demo{
 
    return 1;
}

// 车讯所有数据方法
- (NSMutableArray *)findAll{
    return [NSMutableArray new];
}

// 按照主键查询数据方法
- (DemoClass *)findById:(DemoClass *)demo{
    return demo ;
}

@end
