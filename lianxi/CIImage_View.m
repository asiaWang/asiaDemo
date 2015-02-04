//
//  CIImage_View.m
//  lianxi
//
//  Created by Asia wang on 14-4-25.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "CIImage_View.h"

@interface CIImage_View ()

@end

@implementation CIImage_View
{
    UIImageView *_imageView;
    UISlider *_slider;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    _imageView = [[UIImageView alloc]initWithFrame:CGRectMake(0, 0, 320, 260)];
    [self.view addSubview:_imageView];
    
    _slider = [[UISlider alloc]initWithFrame:CGRectMake(10, _imageView.frame.origin.y + _imageView.frame.size.height, 300, 30)];
    _slider.maximumValue = 1.0;
    _slider.minimumValue = 0.0;
    [_slider addTarget:self action:@selector(ValueChange) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:_slider];
    
    
    NSString *path = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"jpg"];
    NSURL *fileUrl = [NSURL fileURLWithPath:path];
    CIImage *image = [CIImage imageWithContentsOfURL:fileUrl];
    
    CIFilter *filter = [CIFilter filterWithName:@"CISepiaTone"];
    [filter setValue:image forKey:kCIInputImageKey];
    [filter setValue:@0.0 forKey:@"inputIntensity"];
    
    _imageView.image = [UIImage imageWithCIImage:filter.outputImage];
    
    
}

- (void)ValueChange
{
    NSString *path = [[NSBundle mainBundle] pathForResource:@"image" ofType:@"jpg"];
    NSURL *fileUrl = [NSURL fileURLWithPath:path];
    CIImage *image = [CIImage imageWithContentsOfURL:fileUrl];
    
    CIFilter *filter = [CIFilter filterWithName:@"CISepiaTone"];
    [filter setValue:image forKey:kCIInputImageKey];

    [filter setValue:[NSNumber numberWithFloat:_slider.value] forKey:@"inputIntensity"];
    _imageView.image = [UIImage imageWithCIImage:filter.outputImage];

}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
