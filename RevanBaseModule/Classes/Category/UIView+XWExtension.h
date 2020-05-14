//
//  UIView+XWExtension.h
//  爱种商城
//
//  Created by XW on 16/9/26.
//  Copyright © 2016年 xw. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (XWExtension)
@property (nonatomic, assign) CGSize size;
@property (nonatomic, assign) CGFloat width;
@property (nonatomic, assign) CGFloat height;
@property (nonatomic, assign) CGFloat x;
@property (nonatomic, assign) CGFloat y;
@property (nonatomic, assign) CGFloat CenterX;
@property (nonatomic, assign) CGFloat CenterY;
//- (CGFloat)x;
//- (void)setX:(CGFloat)x;
/** 在分类中声明@property, 只会生成方法的声明, 不会生成方法的实现和带有_下划线的成员变量*/

/**
 * 判断一个控件是否真正显示在主窗口
 */
- (BOOL)isShowingOnKeyWindow;

//- (CGFloat)x;
//- (void)setX:(CGFloat)x;
/** 在分类中声明@property, 只会生成方法的声明, 不会生成方法的实现和带有_下划线的成员变量*/
+ (instancetype)viewFromXib;
@end
