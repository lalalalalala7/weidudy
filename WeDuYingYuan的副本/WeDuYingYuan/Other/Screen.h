//
//  Flg.h
//  BwHome
//
//  Created by 王翔 on 2019/1/8.
//  Copyright © 2019年 Person. All rights reserved.
//

#ifndef Flg_h
#define Flg_h
#import "AppDelegate.h"


// 程序代理对象
#define App_Delegate (AppDelegate *)[UIApplication sharedApplication].delegate
// 窗口的宏
#define G_Window  [(AppDelegate *)[UIApplication sharedApplication].delegate window]

/*
 ------------------------- 屏幕的宏 -------------------
 */
/// 屏幕宽度
#define  SCR_W      [UIScreen mainScreen].bounds.size.width
/// 屏幕高度
#define  SCR_H      [UIScreen mainScreen].bounds.size.height

/// 3.5寸屏幕(4\4s) （像素值： 640px * 960px，开发点:320pt * 480pt）
#define  SCR_3_5    (SCR_W == 320.0 && SCR_H == 480.0)

/// 4寸屏幕(5\5s\5c)(640px * 1136px)
#define  SCR_4      (SCR_W == 320.0 && SCR_H == 568.0)

/// 4.7寸（6、6s、7、8）(750px * 1334px)
#define  SCR_4_7    (SCR_W == 375.0 && SCR_H == 667.0)

/// 5.5寸屏（plus） （1242px * 2208px）
#define  SCR_5_5    (SCR_W == 414.0 && SCR_H == 736.0)

/// 5.8寸（X、Xs） (1125px * 2436px )
#define  SCR_5_8    (SCR_W == 375.0 && SCR_H == 812.0)

/// 6.5(Xs Max)  (1242px * 2688px)
#define  SCR_Max_R  (SCR_W == 414.0 && SCR_H == 896.0)


/// 状态栏高度
#define  Status_Bar_H   ((SCR_5_8 || SCR_Max_R) ? 44.0 : 20.0)

/// 导航条高度
#define  NavHeight      44.0

/// 顶部条高度
#define  Top_Bar_H      (Status_Bar_H + NavHeight)

/// 底部安全距离
#define  Bottom_Safe_H  ((SCR_5_8 || SCR_Max_R) ? 34.0 : 0.0)

/// 以4.7寸屏为设计基准做的适配的宏
#define  FIT(x)         (SCR_W / 375.0 * (x))


#endif /* Flg_h */
