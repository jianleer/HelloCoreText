//
//  CTFrameParser.h
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//


/*
 用于生成最后绘制界面需要的CTFrameRef实例
 */

#import <Foundation/Foundation.h>
#import "CoreTextData.h"
#import "CTFrameParserConfig.h"
@interface CTFrameParser : NSObject
+(CoreTextData*)parseContent:(NSString*)content config:(CTFrameParserConfig*)config;
@end