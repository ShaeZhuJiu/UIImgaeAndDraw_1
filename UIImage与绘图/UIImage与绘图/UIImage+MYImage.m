//
//  UIImage+MYImage.m
//  UIImage与绘图
//
//  Created by 谢鑫 on 2019/7/22.
//  Copyright © 2019 Shae. All rights reserved.
//

#import "UIImage+MYImage.h"

@implementation UIImage (MYImage)
+ (UIImage *)image:(UIImage *)image addWaterMarkWithString:(NSString *)string{
    //开启一个图形上下文
    UIGraphicsBeginImageContext(image.size);
    //绘制上下文：1.绘制图片
    [image drawAtPoint:CGPointMake(0, 20)];
    //绘制上下文：2.添加文字到上下文
    NSDictionary *dict=@{NSFontAttributeName:[UIFont systemFontOfSize:80.0],
                         NSForegroundColorAttributeName:[UIColor blackColor]
                         };
    [string drawAtPoint:CGPointMake(60, 60) withAttributes:dict];
    //从图形上下文中获取合成的图片
    UIImage *watermarkImage=UIGraphicsGetImageFromCurrentImageContext();
    //关闭上下文
    UIGraphicsEndImageContext();
    return watermarkImage;
    
}
@end
