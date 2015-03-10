//
//  CTFrameParser.m
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#import "CTFrameParser.h"
#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>

@implementation CTFrameParser
+(NSDictionary*)attributesWithConfig:(CTFrameParserConfig*)config{
    CGFloat fontSize = config.fontSize;
    CTFontRef fontRef = CTFontCreateWithName((CFStringRef)@"ArialMT", fontSize, NULL);
    CGFloat lineSpacing = config.lineSpace;
    const CFIndex kNumberOfSettings = 3;
    CTParagraphStyleSetting theSettings[kNumberOfSettings] = {
        {kCTParagraphStyleSpecifierLineSpacingAdjustment,sizeof(CGFloat),&lineSpacing},
        {kCTParagraphStyleSpecifierMaximumLineSpacing,sizeof(CGFloat),&lineSpacing},
        {kCTParagraphStyleSpecifierMinimumLineSpacing,sizeof(CGFloat),&lineSpacing}
    };
    
    CTParagraphStyleRef theParagraphRef = CTParagraphStyleCreate(theSettings, kNumberOfSettings);
    
    UIColor *textColor = config.textColor;
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    dict[(id)kCTForegroundColorAttributeName] = (id)textColor.CGColor;
    dict[(id)kCTFontAttributeName]=(__bridge id)fontRef;
    dict[(id)kCTParagraphStyleAttributeName] = (__bridge id)theParagraphRef;
    
    CFRelease(theParagraphRef);
    CFRelease(fontRef);
    return dict;
}

+(CoreTextData*)parseContent:(NSString *)content config:(CTFrameParserConfig *)config{
    NSDictionary *attributs = [self attributesWithConfig:config];
    NSAttributedString   *contentString = [[NSAttributedString alloc] initWithString:content attributes:attributs];
    
//    创建CTFramesetterRef实例
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)contentString);
    
//    获得要绘制的区域的高度
    CGSize restrictSize = CGSizeMake(config.width, CGFLOAT_MAX);
    CGSize coreTextSize = CTFramesetterSuggestFrameSizeWithConstraints(framesetter, CFRangeMake(0, 0), nil, restrictSize, nil);
    
    CGFloat tetHeight = coreTextSize.height;
    
//    生成CTFrameRef实例
    CTFrameRef frame = [self craeteFrameWithFramesetter:framesetter config:config height:tetHeight];
    
//    将生成好的CTFrameRef实例和计算好的绘制高度保存到CoreTextData中，最后返回CoreTextData实例
    CoreTextData *data = [[CoreTextData alloc] init];
    data.ctFrame = frame;
    data.height = tetHeight;
    
//    释放内存
    CFRelease(frame);
    CFRelease(framesetter);
    return data;
    
    
}


+(CTFrameRef)craeteFrameWithFramesetter:(CTFramesetterRef)framesetter config:(CTFrameParserConfig*)config height:(CGFloat)height{
    
    CGMutablePathRef path = CGPathCreateMutable();
    CGPathAddRect(path, NULL, CGRectMake(0, 0, config.width, height));
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, 0), path, NULL);
    CFRelease(path);
    return frame;
};

@end
