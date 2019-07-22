//
//  MainView.m
//  UIImage与绘图
//
//  Created by 谢鑫 on 2019/7/22.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "MainView.h"
#import "UIImage+MYImage.h"
@implementation MainView

- (void)drawRect:(CGRect)rect{
    [self addWaterMark];
}
-(void)myDrawImage{
    UIImage *image1=[UIImage imageNamed:@"1"];
    NSString *path=[[NSBundle mainBundle] pathForResource: @"2"ofType:@"jpg"];
    UIImage *imgae2=[UIImage imageWithContentsOfFile:path];
    
    //先绘制image1
    [image1  drawAtPoint:CGPointZero];
    
    //绘制imgae2
    [imgae2 drawInRect:CGRectMake(0, 250, 100, 100)];
    
}
-(void)addWaterMark{
    UIImage *image1=[UIImage imageNamed:@"1"];
    UIImage *imageWater =[UIImage image:image1 addWaterMarkWithString:@"Shae"];
    UIImageView *imageView=[[UIImageView alloc]initWithImage:imageWater];
    imageView.frame=CGRectMake(0, 0, 1025, 576);
    [self addSubview:imageView];
}
@end
