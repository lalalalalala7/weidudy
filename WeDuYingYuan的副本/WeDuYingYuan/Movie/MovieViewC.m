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
}
-(UIScrollView *)mainSC{
    if (!_mainSC) {
    
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
