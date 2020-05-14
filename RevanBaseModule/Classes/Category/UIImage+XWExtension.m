//
//  UIImage+XWExtension.m
//  爱种商城
//
//  Created by XW on 2016/11/27.
//  Copyright © 2016年 XW. All rights reserved.
//

#import "UIImage+XWExtension.h"

@implementation UIImage (XWExtension)

- (UIImage *)circleImage {
    
 /*
    // NO是不透明
    UIGraphicsBeginImageContextWithOptions(self.size, NO, 0.0);
    
    // 拿到当前上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    
    // 添加一个圆
    CGRect rect = CGRectMake(0, 0, self.size.width, self.size.height);
    CGContextAddEllipseInRect(ctx, rect);
    
    // 裁剪
    CGContextClip(ctx);
    
    // 将image绘制到这个圆形区域
    [self drawInRect:rect];

    // 拿到当前上下文绘制的image
    UIImage *image = UIGraphicsGetImageFromCurrentImageContext();
    
    UIGraphicsEndImageContext();
    
    return image;
*/
    UIGraphicsBeginImageContext(self.size); //bezierPathWithOvalInRect方法后面传的Rect,可以看作(x,y,width,height),前两个参数是裁剪的中心点,后面两个决定裁剪的区域是圆形还是椭圆.
    UIBezierPath *path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(0, 0, self.size.width, self.size.height)]; //把路径设置为裁剪区域(超出裁剪区域以外的内容会自动裁剪掉)
    [path addClip];
    //把图片绘制到上下文当中
    [self drawAtPoint:CGPointZero];
    //从上下文当中生成一张新的图片
    UIImage *newImage = UIGraphicsGetImageFromCurrentImageContext();
    //结束上下文
    UIGraphicsEndImageContext();
    //返回新的图片
    return newImage;
 
}

@end
