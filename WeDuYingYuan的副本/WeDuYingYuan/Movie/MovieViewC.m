//
//  MovieViewC.m
//  WeDuYingYuan
//
//  Created by 1111 on 2019/6/9.
//  Copyright © 2019年 1111. All rights reserved.
//

#import "MovieViewC.h"

@interface MovieViewC ()

@end

@implementation MovieViewC

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    self.title = @"电影";
    PZScaleCycleView *cycleView = [[PZScaleCycleView alloc]initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.width  * .5) WithAnimationDuration:3];
    
    cycleView.isCycle = 1;
    cycleView.scaleNum = 0.9;
    cycleView.imgWidth = 130;
    cycleView.imgArr = @[@"dengluzhuce_ditu",@"dengluzhuce_ditu",@"dengluzhuce_ditu"];
    [self.mainSC addSubview:cycleView];
    __weak typeof(self) weakSelf = self;
    cycleView.imgOnClick = ^(NSInteger index) {
        __strong typeof(self) strongSelf = weakSelf;
    };
}
-(UIScrollView *)mainSC{
    if (!_mainSC) {
        _mainSC = [[UIScrollView alloc] initWithFrame:CGRectMake(0, Top_Bar_H+15, SCR_W, SCR_H)];
        _mainSC.contentSize = CGSizeMake(0, SCR_W+100);
        _mainSC.showsVerticalScrollIndicator = NO;
        _mainSC.showsHorizontalScrollIndicator =NO;
        [self.view addSubview:self.mainSC];
    }
    
    return _mainSC;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
