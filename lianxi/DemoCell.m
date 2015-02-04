//
//  DemoCell.m
//  lianxi
//
//  Created by Asia wang on 14-3-18.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "DemoCell.h"

@implementation DemoCell

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code
        self.image = [[UIImageView alloc] initWithFrame:CGRectMake(5, 5, 60, 40)];
        self.image.backgroundColor = [UIColor orangeColor];
        [self.contentView addSubview:self.image];
        
        self.label = [[UILabel alloc] initWithFrame:CGRectMake(65, 5, 240, 40)];
        self.label.numberOfLines = 0;
        self.label.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:self.label];
        
    }
    return self;
}

- (void)layoutSubviews{
    

    CGFloat height = [self heightContentBackgroundView:self.label.text];
    self.label.frame=CGRectMake(65, 5, 240, height);
//    if(self.myImageView.image)
//        self.myImageView.frame=CGRectMake(5, self.label.bottom, 100, 100);
    
    
}

- (CGFloat)heightContentBackgroundView:(NSString *)content
{
    CGFloat height = [self heigtOfLabelForFromString:content fontSizeandLabelWidth:240 andFontSize:16.0];
    if (height<40)
    {
        height = 40;
    }
    height += 20;
    
    return height;
}

- (CGFloat)heigtOfLabelForFromString:(NSString *)text fontSizeandLabelWidth:(CGFloat)width andFontSize:(CGFloat)fontSize
{
    
    CGSize size;
    if ([[UIDevice currentDevice]systemVersion].floatValue >=7) {
        NSAttributedString *string = [[NSAttributedString alloc] initWithString:text];
        NSDictionary *dic1 = @{NSFontAttributeName: [UIFont systemFontOfSize:16]};
        NSRange range = NSMakeRange(0, string.length);
        
        NSDictionary *dic = [string attributesAtIndex:0 effectiveRange:&range];
        size = [text boundingRectWithSize:CGSizeMake(240, 2000) options:NSStringDrawingUsesLineFragmentOrigin attributes:dic1 context:nil].size;
    }else{
        size = [text sizeWithFont:[UIFont systemFontOfSize:fontSize] constrainedToSize:CGSizeMake(width, 20000)];
    }
    
    
    
    NSLog(@"size is %f",size.height);
//    NSLog(@"size2 is %f",size2.height);
    return size.height;
}



- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
