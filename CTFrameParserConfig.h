//
//  CTFrameParserConfig.h
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//


/*
 用于配置绘制的参数，例如颜色，大小，行距
 */


#import <UIKit/UIKit.h>
#import <Foundation/Foundation.h>

@interface CTFrameParserConfig : NSObject

@property (nonatomic,assign) CGFloat width;
@property (nonatomic,assign) CGFloat fontSize;
@property (nonatomic,assign) CGFloat lineSpace;
@property (nonatomic,strong) UIColor *textColor;

@end
