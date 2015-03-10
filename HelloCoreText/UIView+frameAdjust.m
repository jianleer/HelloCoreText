//
//  UIView+frameAdjust.m
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#import "UIView+frameAdjust.h"

@implementation UIView (frameAdjust)

-(CGFloat)x
{
    return self.frame.origin.x;
}
-(void)setX:(CGFloat)x
{
    self.frame = CGRectMake(x, self.y, self.width, self.height);
}


-(CGFloat)y
{
    return self.frame.origin.y;
}
-(void)setY:(CGFloat)y
{
    self.frame = CGRectMake(self.x,y, self.width, self.height);
}


-(CGFloat)height
{
    return self.frame.size.height;
}
-(void)setHeight:(CGFloat)Height
{
    self.frame  = CGRectMake(self.x, self.y, self.width, self.height);
}


-(CGFloat)width
{
    return self.frame.size.width;
}
-(void)setWidth:(CGFloat)Width
{
    self.frame = CGRectMake(self.x, self.y, Width, self.height);
}




@end
