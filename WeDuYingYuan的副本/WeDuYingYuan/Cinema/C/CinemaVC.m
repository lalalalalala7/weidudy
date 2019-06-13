//
//  CinemaVC.m
//  WeDuYingYuan
//
//  Created by 1111 on 2019/6/9.
//  Copyright © 2019年 1111. All rights reserved.
//

#import "CinemaVC.h"

@interface CinemaVC ()<UITableViewDelegate,UITableViewDataSource>
@property (nonatomic,strong) UIButton * DingWei;
@property (nonatomic,strong) UILabel * WeiZhi;
@property (nonatomic,strong) UIButton * Tuijian;
@property (nonatomic,strong) UIButton * Fujin;
@property (nonatomic,strong) UITableView * TuijianTbv;
@property (nonatomic,strong) UITableView * FujinTbv;
@property (nonatomic,strong) UIButton * taoxin;

@end

@implementation CinemaVC


//定位
-(UIButton *)DingWei{
    if (!_DingWei) {
        
        _DingWei = [[UIButton alloc]initWithFrame:CGRectMake(20, 57, 30, 30)];
        [_DingWei setImage:[UIImage imageNamed:@"dingwei"] forState:UIControlStateNormal];
        [_DingWei addTarget:self action:@selector(DingWei) forControlEvents:UIControlEventTouchUpInside];
        
    }
    return _DingWei;
}
-(UILabel *)WeiZhi{
    if (!_WeiZhi) {
        _WeiZhi = [[UILabel alloc]initWithFrame:CGRectMake(50, 60, 100, 30)];
        _WeiZhi.text = @"北京";
        
    }
    return _WeiZhi;
}
#pragma ----------------推荐影院--------------
-(UIButton *)Tuijian{
    if (!_Tuijian) {
        _Tuijian = [[UIButton alloc]initWithFrame:CGRectMake(80, 100, 100, 30)];
        _Tuijian.backgroundColor = [UIColor redColor];
        //        _Tuijian.titleLabel.text = @"推荐影院";
        [_Tuijian setTitle:@"推荐影院" forState:UIControlStateNormal];
        _Tuijian.layer.masksToBounds = YES;
        _Tuijian.layer.cornerRadius = 5;
        
        [_Tuijian addTarget:self action:@selector(TuijianBtn) forControlEvents:UIControlEventTouchUpInside];
    }
    return _Tuijian;
}

-(UITableView *)TuijianTbv{
    if (!_TuijianTbv) {
        _TuijianTbv  = [[UITableView alloc]initWithFrame:CGRectMake(30, 140, self.view.frame.size.width-60, self.view.frame.size.height-140) style:UITableViewStylePlain];
        _TuijianTbv.separatorStyle=UITableViewCellSeparatorStyleNone;//在syle为UITableViewStyle7Plain有效，隐藏了分隔线，但在UITableViewStyle为UITableViewStyleGrouped时不起作用.
        _TuijianTbv.showsVerticalScrollIndicator = NO;
        
        _TuijianTbv.delegate = self;
        _TuijianTbv.dataSource = self;
    }
    return _TuijianTbv;
}
-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return 10;
}
-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 120;
}


//重写 cell 点击事件 去除表格点击灰色效果
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath*)indexPath{
    //当离开某行时，让某行的选中状态消失
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}
#pragma ----------------附近影院--------------

//附近影院
-(UIButton *)Fujin{
    if (!_Fujin) {
        _Fujin = [[UIButton alloc]initWithFrame:CGRectMake(self.view.frame.size.width/2+30, 100, 100, 30)];
        _Fujin.backgroundColor = [UIColor redColor];
        [_Fujin setTitle:@"附近影院" forState:UIControlStateNormal];
        _Fujin.layer.masksToBounds = YES;
        _Fujin.layer.cornerRadius = 5;
        [_Fujin addTarget:self action:@selector(FujinBtn) forControlEvents:UIControlEventTouchUpInside];
        
        _FujinTbv.showsVerticalScrollIndicator = NO;
        
    }
    return _Fujin;
}

-(UITableView *)FujinTbv{
    if (!_FujinTbv) {
        _FujinTbv  = [[UITableView alloc]initWithFrame:CGRectMake(30, 140, self.view.frame.size.width-60, self.view.frame.size.height-140) style:UITableViewStylePlain];
        _FujinTbv.separatorStyle=UITableViewCellSeparatorStyleNone;//在syle为UITableViewStylePlain有效，隐藏了分隔线，但在UITableViewStyle为UITableViewStyleGrouped时不起作用.
        
        
        _FujinTbv.delegate = self;
        _FujinTbv.dataSource = self;
    }
    return _FujinTbv;
}

-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (tableView==_TuijianTbv) {
        
        UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell"];
            UIView *CellView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, self.view.frame.size.width-60, 100)];
            CellView.layer.masksToBounds = YES;
            CellView.layer.cornerRadius = 5;
            CellView.layer.borderWidth = 1;
            
            CellView.layer.borderColor = [[UIColor colorWithRed:204.0/255.0 green:204.0/255.0 blue:204.0/255.0 alpha:1] CGColor];
            
            
            cell.selectionStyle=UITableViewCellSelectionStyleNone;
            
            UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
            view1.backgroundColor = [UIColor blackColor];
            view1.layer.masksToBounds = YES;
            view1.layer.cornerRadius = 5;
            
            UILabel *Label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 5, cell.frame.size.width-100, 25)];
            Label1.text = @"CGV影城";
            
            UILabel *Label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 30, cell.frame.size.width-100, 20)];
            Label2.font = [UIFont systemFontOfSize:15];
            Label2.lineBreakMode = NSLineBreakByTruncatingTail;
            Label2.numberOfLines = 0;
            Label2.text = @"海淀区清河中街68号华锐五彩城t购物中心东区7层";
            
            UILabel *Label3 = [[UILabel alloc]initWithFrame:CGRectMake(100,70, 80, 30)];
            Label3.font = [UIFont systemFontOfSize:15];
            Label3.text = @"3.2km";
            
            _taoxin = [[UIButton alloc]initWithFrame:CGRectMake(CellView.frame.size.width-40, 70, 25, 25)];
            [_taoxin setImage:[UIImage imageNamed:@"taoxin"] forState:UIControlStateNormal];
            [_taoxin addTarget:self action:@selector(taoxinBtn) forControlEvents:UIControlEventTouchUpInside];
            
            [CellView addSubview:view1];
            [CellView addSubview:Label1];
            [CellView addSubview:Label2];
            [CellView addSubview:Label3];
            [CellView addSubview:_taoxin];
            
            
            [cell addSubview:CellView];
        }
        return cell;
    }else{
        
        UITableViewCell *cell2 = [tableView dequeueReusableCellWithIdentifier:@"cell2"];
        if (!cell2) {
            cell2 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleValue1 reuseIdentifier:@"cell2"];
            UIView *CellView = [[UIView alloc]initWithFrame:CGRectMake(0, 10, self.view.frame.size.width-60, 100)];
            CellView.layer.masksToBounds = YES;
            CellView.layer.cornerRadius = 5;
            CellView.layer.borderWidth = 1;
            
            CellView.layer.borderColor = [[UIColor colorWithRed:204.0/255.0 green:204.0/255.0 blue:204.0/255.0 alpha:1] CGColor];
            
            
            cell2.selectionStyle=UITableViewCellSelectionStyleNone;
            
            
            UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(10, 10, 80, 80)];
            view1.backgroundColor = [UIColor blackColor];
            view1.layer.masksToBounds = YES;
            view1.layer.cornerRadius = 5;
            
            UILabel *Label1 = [[UILabel alloc]initWithFrame:CGRectMake(100, 5, cell2.frame.size.width-100, 25)];
            Label1.text = @"于凯欣影城";
            
            UILabel *Label2 = [[UILabel alloc]initWithFrame:CGRectMake(100, 30, cell2.frame.size.width-100, 20)];
            Label2.font = [UIFont systemFontOfSize:15];
            Label2.lineBreakMode = NSLineBreakByTruncatingTail;
            Label2.numberOfLines = 0;
            Label2.text = @"银河系全宇宙地球亚洲中国山西运城";
            
            UILabel *Label3 = [[UILabel alloc]initWithFrame:CGRectMake(100,70, 80, 30)];
            Label3.font = [UIFont systemFontOfSize:15];
            Label3.text = @"999km";
            
            _taoxin = [[UIButton alloc]initWithFrame:CGRectMake(CellView.frame.size.width-40, 70, 25, 25)];
            [_taoxin setImage:[UIImage imageNamed:@"taoxin"] forState:UIControlStateNormal];
            
            [_taoxin addTarget:self action:@selector(taoxinBtn) forControlEvents:UIControlEventTouchUpInside];
            
            [CellView addSubview:_taoxin];
            
            
            [CellView addSubview:view1];
            [CellView addSubview:Label1];
            [CellView addSubview:Label2];
            [CellView addSubview:Label3];
            
            [cell2 addSubview:CellView];
            
        }
        return cell2;
    }
}

-(void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.navigationController.navigationBarHidden = YES;
    
    [self.view addSubview:self.DingWei];
    [self.view addSubview:self.WeiZhi];
    [self.view addSubview:self.Tuijian];
    [self.view addSubview:self.Fujin];
    [self.view addSubview:self.TuijianTbv];
    [self.view addSubview:self.FujinTbv];
    [_Tuijian setSelected:YES];
    
}

-(void)TuijianBtn{
    _TuijianTbv.hidden = NO;
    _FujinTbv.hidden = YES;
    [_Tuijian setSelected:YES];
    [_Fujin setSelected:NO];
}
-(void)FujinBtn{
    _TuijianTbv.hidden = YES;
    _FujinTbv.hidden = NO;
    [_Fujin setSelected:YES];
    [_Tuijian setSelected:NO];
    
}

//收藏//喜欢效果
-(void)taoxinBtn{
    [_taoxin setImage:[UIImage imageNamed:@"taoxin_s"] forState:UIControlStateNormal];

}

@end

