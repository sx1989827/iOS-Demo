//
//  ViewController.m
//  BezierPathDemo
//
//  Created by 孙昕 on 16/3/24.
//  Copyright © 2016年 孙昕. All rights reserved.
//

#import "ViewController.h"
#import <pop/POP.h>
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
}

-(void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
    CAShapeLayer *layer=[CAShapeLayer layer];
    layer.strokeColor=[UIColor redColor].CGColor;
    layer.fillColor=[UIColor clearColor].CGColor;
    layer.lineWidth=3;
    layer.path=[self circlePath];
    [self.view.layer addSublayer:layer];
    [[self layer] setMask:layer];
    CABasicAnimation *ani=[CABasicAnimation animationWithKeyPath:@"strokeEnd"];
    ani.fromValue=@0;
    ani.toValue=@1;
    ani.duration=1;
    [layer addAnimation:ani forKey:@"show"];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(CGPathRef)linePath
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)];
    [path addLineToPoint:CGPointMake(200, 200)];
    return path.CGPath;
}


-(CGPathRef)rectPath
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)];
    [path addLineToPoint:CGPointMake(100, 200)];
    [path addLineToPoint:CGPointMake(200, 200)];
    [path addLineToPoint:CGPointMake(200, 100)];
    [path closePath];
    return path.CGPath;
}

-(CGPathRef)rectOddPath
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)];
    [path addLineToPoint:CGPointMake(100, 200)];
    [path addLineToPoint:CGPointMake(200, 200)];
    [path addLineToPoint:CGPointMake(200, 100)];
    [path closePath];
    UIBezierPath *path1=[UIBezierPath bezierPath];
    [path1 moveToPoint:CGPointMake(120, 120)];
    [path1 addLineToPoint:CGPointMake(180, 120)];
    [path1 addLineToPoint:CGPointMake(180, 180)];
    [path1 addLineToPoint:CGPointMake(120, 180)];
    [path1 closePath];
    [path appendPath:path1];
    return path.CGPath;
}

-(CGPathRef)circlePath
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path addArcWithCenter:CGPointMake(200, 200) radius:50 startAngle:-M_PI_2 endAngle:M_PI*1.5 clockwise:YES];
    return path.CGPath;
}

-(CGPathRef)curvePath
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)];
    [path addQuadCurveToPoint:CGPointMake(200, 100) controlPoint:CGPointMake(150, 50)];
    return path.CGPath;
}

-(CGPathRef)curveDoublePath
{
    UIBezierPath *path=[UIBezierPath bezierPath];
    [path moveToPoint:CGPointMake(100, 100)];
    [path addCurveToPoint:CGPointMake(300, 100) controlPoint1:CGPointMake(150, 50) controlPoint2:CGPointMake(250, 150)];
    return path.CGPath;
}

-(CALayer*)layer
{
    CAGradientLayer *layerGradient=[CAGradientLayer layer];
    layerGradient.colors=@[(__bridge id)[UIColor blueColor].CGColor,(__bridge id)[UIColor redColor].CGColor];
    layerGradient.locations=@[@0.2,@0.5];
    layerGradient.startPoint=CGPointMake(0, 0);
    layerGradient.endPoint=CGPointMake(1, 1);
    layerGradient.frame=self.view.bounds;
    [self.view.layer addSublayer:layerGradient];
    return layerGradient;
}
@end











