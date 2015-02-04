//
//  Core_textViewController.m
//  lianxi
//
//  Created by Asia wang on 14-4-23.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "Core_textViewController.h"

@interface Core_textViewController ()<UITextViewDelegate>

@end

@implementation Core_textViewController
{
    UIToolbar *_toobar;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

#define Height 40

- (void)addTheLabel
{
    self.label = [[UILabel alloc] initWithFrame:CGRectMake(10, 20, 300, 40)];
    self.label.font = [UIFont systemFontOfSize:17.f];
    [self.view addSubview:self.label];
    
    self.label1 = [[UILabel alloc] initWithFrame:CGRectMake(10, self.label.frame.origin.y + self.label.frame.size.height, 300, 160)];
    self.label1.numberOfLines = 10;
    [self.view addSubview:self.label1];
    
    self.label2 = [[UILabel alloc] initWithFrame:CGRectMake(10, self.label1.frame.origin.y + self.label1.frame.size.height, 300, Height)];
    [self.view addSubview:self.label2];
    
    self.textview = [[UITextView alloc] initWithFrame:CGRectMake(10, self.label2.frame.origin.y + self.label2.frame.size.height, 300, 1 *4 *Height)];
    self.textview.allowsEditingTextAttributes = YES;
    self.textview.delegate = self;
    CALayer *layer = self.textview.layer;
    layer.borderColor = [UIColor greenColor].CGColor;
    layer.borderWidth = 0.5;
    [self.view addSubview:self.textview];
    
    UIControl *control = [[UIControl alloc] init];
    control.frame = self.view.bounds;
    [control addTarget:self action:@selector(controlClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:control];
    [self.view sendSubviewToBack:control];
    
    
    _toobar = [[UIToolbar alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 38)];
    _toobar.barStyle = UIBarStyleDefault;
    
    UIBarButtonItem *btn1 = [[UIBarButtonItem alloc] initWithTitle:@"B" style:UIBarButtonItemStylePlain target:self action:@selector(btnclick:)];
    btn1.tag = 1;
    
    
    UIBarButtonItem *btn2 = [[UIBarButtonItem alloc] initWithTitle:@"I" style:UIBarButtonItemStyleBordered target:self action:@selector(btnclick:)];
    btn2.tag = 2;
    
    UIBarButtonItem *btn3 = [[UIBarButtonItem alloc] initWithTitle:@"~~" style:UIBarButtonItemStyleDone target:self action:@selector(btnclick:)];
    btn3.tag = 3;
    
    UIBarButtonItem *btn4 = [[UIBarButtonItem alloc] initWithTitle:@"font" style:UIBarButtonItemStyleDone target:self action:@selector(btnclick:)];
    btn4.tag = 4;
    
    [_toobar setItems:@[btn1,btn2,btn3,btn4]];
    
    self.textview.inputAccessoryView = _toobar;
}

- (void)btnclick:(UIBarButtonItem *)sender
{
    if (sender.tag == 1) {
        NSLog(@"粗体");
        NSRange selection = self.textview.selectedRange;
        if (selection.length == 0) {
            [[[UIAlertView alloc]initWithTitle:@"提示" message:@"select text tohight fist" delegate:nil cancelButtonTitle:@"close" otherButtonTitles:nil, nil] show ];
            return;
        }
        
        UIColor *bgcolor = [self.textview.attributedText attribute:NSBackgroundColorAttributeName atIndex:selection.location effectiveRange:nil];
        UIColor *newColor ;
        if (CGColorGetAlpha(bgcolor.CGColor) == 0.0) {
            newColor = [UIColor clearColor];
        }
        
        NSDictionary *bStyle = @{NSBackgroundColorAttributeName: newColor};
//        [self applyAttributesToTextArea:bStyle];
    }else if(sender.tag == 2){
        NSLog(@"斜体");
    }else if(sender.tag == 3){
        NSLog(@"");
    }else{
        NSLog(@"font");
        
      NSLog(@"%@",[[NSUUID UUID] UUIDString]);
    }
}





- (void)controlClick
{
    [self.textview resignFirstResponder];
}

- (BOOL)textViewShouldEndEditing:(UITextView *)textView
{
    [self.textview resignFirstResponder];
    return YES;
}
- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self addTheLabel];
    

    
    
    [self setlabel0];
    [self setlabel1];
    [self setlabel2];
    [self setlabel3];
}

- (void)setlabel0
{
    //    NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor greenColor]};
    //    NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor greenColor],NSUnderlineStyleAttributeName:[NSNumber numberWithInt:NSUnderlineStyleSingle]};
    //    NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor blueColor],NSFontAttributeName:[UIFont fontWithName:@"Zapfino" size:24.f],NSBackgroundColorAttributeName:[UIColor orangeColor],NSKernAttributeName:@-3.0};
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor blackColor];
    shadow.shadowBlurRadius = 5.0;
    shadow.shadowOffset = CGSizeMake(1, 1);
    
    NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor greenColor],
                                 NSUnderlineStyleAttributeName:[NSNumber numberWithInt:NSUnderlineStyleSingle]
                                 ,
                                 NSStrikethroughStyleAttributeName:[NSNumber numberWithInt:NSUnderlineStyleSingle],
                                 NSForegroundColorAttributeName:[UIColor blueColor],
                                 NSShadowAttributeName:shadow
                                 };
    
    
    NSAttributedString *aString = [[NSAttributedString alloc] initWithString:@"Green Message" attributes:attributes];
    
    self.label.attributedText = aString;
}
- (void)setlabel1
{
    NSString *string = @"the word longest way is not die ,is i stand front of you  but you dont know i love you ,the word longest way is not i stand of you you dont know i love you but two people are fall in love but dnot stand together";
    NSString *string2 = @"(UIFont*) Sets the font to render the text. If you want bold or italic text provide the correct name for each given font. These vary depending on the font family.\nFor example for the \"Helvetica Neue\" font you need to provide \"HelveticaNeue-Bold\" name for a bolded font, and \"HelveticaNeue-Italic\" for italic font.\nHowever, if you would like to use \"Courier New\", the font names are: \"CourierNewPS- ItalicMT\" for italic and \"CourierNewPS-BoldMT\" for bold.";
    
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor grayColor];
    shadow.shadowBlurRadius = 2.0;
    shadow.shadowOffset = CGSizeMake(1, 1);
    
    NSMutableParagraphStyle *paragraph = [[NSMutableParagraphStyle alloc] init];
    paragraph.alignment = NSTextAlignmentJustified;
    paragraph.firstLineHeadIndent = 20.0;
    paragraph.paragraphSpacingBefore = 16.f;
   
    // 行与行之间添加额外行距
    paragraph.lineSpacing = 4;
    // 段落的阀值，取值（0-1），与接近1.断字会更多
    paragraph.hyphenationFactor = 0.5;

    NSDictionary *attributes = @{NSForegroundColorAttributeName: [UIColor colorWithRed:0.2 green:0.239 blue:0.451 alpha:1],NSShadowAttributeName:shadow,NSParagraphStyleAttributeName:paragraph};
    NSAttributedString *aString = [[NSAttributedString alloc] initWithString:string2 attributes:attributes];
    
    
    self.label1.attributedText = aString;

}
- (void)setlabel2
{
    NSDictionary *redAttrs = @{NSForegroundColorAttributeName: [UIColor redColor],NSUnderlineStyleAttributeName:[NSNumber numberWithInt:NSUnderlineStyleSingle]};
    NSDictionary *greeAttrs = @{NSForegroundColorAttributeName:[UIColor greenColor],NSStrikethroughStyleAttributeName:[NSNumber numberWithInt:NSUnderlineStyleSingle]};
    NSMutableAttributedString *aString = [[NSMutableAttributedString alloc] initWithString:@"Red And green text"];
    [aString setAttributes:redAttrs range:NSMakeRange(0, 3)];
    [aString setAttributes:greeAttrs range:NSMakeRange(8, 5)];
    
    self.label2.attributedText = aString;
}
- (void)setlabel3
{
    
}
- (void)setlabel4
{
    
}
- (void)setlabel5
{
    
}
- (void)setlabel6
{
    
}
- (void)setlabel7
{
    
}
- (void)setlabel8
{
    
}
- (void)setlabel9
{
    
}
- (void)setlabel10
{
    
}
- (void)setlabel11
{
    
}
- (void)setlabel12
{
    
}
- (void)setlabel13
{
    
}
- (void)setlabel14
{
    
}
- (void)setlabel15
{
    
}
- (void)setlabel16
{
    
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
