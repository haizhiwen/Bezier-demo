//
//  BaseView.m
//  Bezier
//
//  Created by 王亚军 on 2017/5/6.
//  Copyright © 2017年 王亚军. All rights reserved.
//

#import "BaseView.h"

@implementation BaseView

- (void)drawRect:(CGRect)rect{
    [super drawRect:rect];
    
    [self bezier1];
    [self bezier2];
    [self bezier3];
    [self bezier4];
    [self bezier5];
}

/**
 矩形
 */
- (void)bezier1{
    UIColor *color = [UIColor blueColor];
    [color set]; //设置线条颜色
    
    UIBezierPath * path = [UIBezierPath bezierPathWithRect:CGRectMake(20, 20, 100, 80)];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    
    [path stroke];
}

/**
 线
 */
- (void)bezier2{
    
    UIColor *color = [UIColor redColor];
    [color set]; //设置线条颜色
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    
    [path moveToPoint:CGPointMake(50, 100)];
    [path addLineToPoint:CGPointMake(200, 260)];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapSquare; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    
    [path stroke];
    
}

/**
 五边形
 */
- (void)bezier3{
    UIColor *color = [UIColor greenColor];
    [color set]; //设置线条颜色
    
    UIBezierPath * path = [UIBezierPath bezierPath];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapSquare; //线条拐角
    path.lineJoinStyle = kCGLineJoinMiter; //终点处理
    
    [path moveToPoint:CGPointMake(230.0, 120.0)];//起点
    
    [path addLineToPoint:CGPointMake(300.0, 80.0)];
    [path addLineToPoint:CGPointMake(260, 200)];
    [path addLineToPoint:CGPointMake(150.0, 200)];
    [path addLineToPoint:CGPointMake(150,130.0)];
    [path closePath];//第五条线通过调用closePath方法得到的
    
    [path fill];

}

/**
 小圆
 */
- (void)bezier4{
    UIColor *color = [UIColor purpleColor];
    [color set]; //设置线条颜色
    
    UIBezierPath* path = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(20, 300, 80, 80)];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapRound; //线条拐角
    path.lineJoinStyle = kCGLineJoinRound; //终点处理
    
    [path stroke];

}

/**
 大圆
 */
- (void)bezier5{
    UIColor *color = [UIColor cyanColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 300) radius:90 startAngle:0 endAngle:120 clockwise:YES];
    
    path.lineWidth = 5.0;
    path.lineCapStyle = kCGLineCapSquare;
    path.lineJoinStyle = kCGLineJoinRound;
    [path stroke];
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
