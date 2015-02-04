//
//  DemoClass.m
//  lianxi
//
//  Created by Asia wang on 14-6-29.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "DemoClass.h"

@implementation DemoClass
+ (NSString *)pathForDocuments
{
    NSArray *array = NSSearchPathForDirectoriesInDomains(array, NSUserDomainMask, YES);
    /*
     * array中只一个元素
     */
    
    return (NSString *)[array lastObject];
}

- (void)encodeWithCoder:(NSCoder *)aCoder
{
    [aCoder encodeObject:self.date forKey:@"date"];
    [aCoder encodeObject:self.content forKey:@"content"];
}

- (id)initWithCoder:(NSCoder *)aDecoder
{
    self.date = [aDecoder decodeObjectForKey:@"date"];
    self.content = [aDecoder decodeObjectForKey:@"content"];
    return self;
}



@end
