//
//  TableViewController.m
//  lianxi
//
//  Created by Asia wang on 14-3-18.
//  Copyright (c) 2014年 wangyazhou. All rights reserved.
//

#import "TableViewController.h"
#import "DemoCell.h"

@interface TableViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation TableViewController
{
    UITableView *_tableView;
    
    NSMutableArray *_data;
}
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        
        _data = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
    
    [_data addObjectsFromArray:[[NSArray alloc] initWithObjects:@"23627643587652987",@"山大佛山大拉萨的会计法减肥来看洒到了风科技拉法基阿里是否将拉开圣诞节法拉克水煎服垃圾口是否可拉斯加飞 山大了罚款久爱时空L发动机啊说说离开的激发了可是对方幅ioaf",@"阿福iu我覅",@"噫吁嚱！，危呼高哉！蜀道之难难于上青天.蚕丛及鱼凫，开国何茫然。尔来四万八千岁，始与秦塞通人烟。 西当太白有鸟道，可以横绝峨嵋巅.地崩山摧壮士死，然后天梯石栈相钩连.上有六龙回日之高标，下有冲波逆折之回川。黄鹤之飞尚不得，猿猱欲度愁攀缘。青泥何盘盘，百步九折萦岩峦。扪参历井仰胁息，以手抚膺坐长叹。 问君西游何时还，畏途岩不可攀。但见悲鸟号古木，雄飞雌从绕林间。 又闻子规啼夜月，愁空山。蜀道之难难于上青天，使人听此凋朱颜。 连峰去天不盈尺，枯松倒挂倚绝壁。 飞湍瀑流争喧，石冰崖转石万壑雷。 其险也若此，嗟尔远道之人，胡为呼来哉 剑阁峥嵘而崔嵬，一夫当关，万夫莫开。所守或匪亲，化为狼与豺 朝避猛虎，夕避长蛇。磨牙吮血，杀人如麻 锦城虽云乐，不如早还家。 蜀道之难难于上青天，侧身西望长咨嗟。",@"sadsalkfjalksjdflakjflakjfojflkjwpofjwkljfajfksajdfojfakljfierfghdsjhgieskjdflsjlkjf",@"sadfhhafkjh",@"8897987979",@"sdfahkjk",@"六王毕，四海一，蜀山兀，阿房出。覆压三百余里，隔离天日。骊（lí）山北构而西折，直走咸阳。二川溶 溶，流入宫墙。五步一楼，十步一阁；廊腰缦回，檐牙高啄；各抱地势，钩心斗角。盘盘焉，囷囷（qūn）焉，蜂房水涡，矗（chù）不知其（广东版教材为“乎”）几千万落。长桥卧波，未云何龙？复道行空，不霁（jì）何虹？高低冥迷，不知西东（也做“东西”）。歌台暖响，春光融融；舞殿冷袖，风雨凄凄。一日之内，一宫之间，而气候不齐。　妃嫔(pín)媵（yìng）嫱(qiáng)，王子皇孙，辞楼下殿，辇（niǎn）来于秦，朝歌夜弦（xián），为秦宫人。明星荧(yíng)荧(yíng)，开妆镜也；绿云扰扰，梳晓鬟（huán）也；渭流涨腻，弃脂水也；烟斜雾横，焚椒兰也。雷霆乍惊，宫车过也；辘（lù）辘（lù）远听，杳（yǎo）不知其所之也。一肌一容，尽态极妍，缦立远视，而望幸焉。有不得（广东版教材无“得”）见者，三十六年。燕、赵之收藏，韩、魏之经营，齐、楚之精英，几世几年，摽（piāo)掠其人，倚叠如山。一旦不能有，输来其间。鼎铛（chēng）玉石，金块珠砾，弃掷逦（lǐ）迤（yǐ），秦人视之，亦不甚惜。嗟乎！一人之心，千万人之心也。秦爱纷奢，人亦念其家。奈何取之尽锱（zī）铢（zhū），用之如泥沙？使负栋之柱，多于南亩之农夫；架梁之椽（chuán），多于机上之工女；钉头磷磷，多于在庾（yǔ）之粟(sù)粒；瓦缝参差（cēn cī ），多于周身之帛（bó）缕；直栏横槛（jiàn），多于九土之城郭；管弦呕（ōu）哑（yā），多于市人之言语。使天下之人，不敢言而敢怒。独夫之心，日益骄固。戍（shù）卒叫，函谷举，楚人一炬，可怜焦土！呜呼，灭六国者六国也，非秦也。族秦者秦也，非天下也。嗟乎！使六国各爱其人，则足以拒秦；使秦复爱六国之人，则递三世可至万世而为君，谁得而族灭也？秦人不暇自哀，而后人哀之；后人哀之而不鉴之，亦使后人而复哀后人也",@"a", nil]];
    
    [self loadTheTableview];
}
- (void)loadTheTableview
{
    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 64, 320 , [[UIScreen mainScreen]bounds].size.height - 64 - 49) style:UITableViewStylePlain];
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return [_data count];
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellName = @"cellName";
    DemoCell *cell = [tableView dequeueReusableCellWithIdentifier:cellName];
    if (cell == nil) {
        cell = [[DemoCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellName];
    }
    cell.label.text = [_data objectAtIndex:indexPath.row];
    return cell;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    CGSize size = [[_data objectAtIndex:indexPath.row] sizeWithFont:[UIFont systemFontOfSize:16.0f] constrainedToSize:CGSizeMake(240, 20000)];
    CGFloat height = size.height;
    
    if (height<40) //评论年内容的高度
    {
        height = 40;
    }else{
        height += 20;
    }
    
    // NSIndexPath *indexPath = [NSIndexPath indexPathForRow:indexPath.row inSection:0];
    
//    if(indexPath.row==0||indexPath.row==1){
//        height+=105;
//    }
    
    height+=10; //加上“评论人”和“时间”Label的高度；
    
    return height;
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
