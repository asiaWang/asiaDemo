//
//  DemoCell.h
//  lianxi
//
//  Created by Asia wang on 14-3-18.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DemoCell : UITableViewCell
{
    UIImageView *image;
    UILabel *_label;
}
@property (nonatomic,strong)UILabel *label;
@property (nonatomic,strong)UIImageView *image;
@end
