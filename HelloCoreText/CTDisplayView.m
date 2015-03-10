//
//  CTDisplayView.m
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#import "CTDisplayView.h"
#import <CoreText/CoreText.h>
@implementation CTDisplayView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    
    [super drawRect:rect];
    CGContextRef context = UIGraphicsGetCurrentContext();
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
    if (self.data) {
        CTFrameDraw(self.data.ctFrame, context);
    }
    
    
    
}
/*
- (void)drawRect:(CGRect)rect {
    // Drawing code
  
    [super drawRect:rect];
//    步骤一
    CGContextRef context = UIGraphicsGetCurrentContext();
    
//    步骤二  翻转绘制引擎坐标 UIKit坐标在左上角，引擎坐标在左下角
    CGContextSetTextMatrix(context, CGAffineTransformIdentity);
    CGContextTranslateCTM(context, 0, self.bounds.size.height);
    CGContextScaleCTM(context, 1.0, -1.0);
    
//    步骤三
    CGMutablePathRef path  = CGPathCreateMutable();
    CGPathAddRect(path, NULL, self.bounds);
    
//    步骤四
    NSAttributedString*attString = [[NSAttributedString alloc] initWithString:@"hello World"
                                    "北国风光，千里冰封，万里雪飘。"
                                    "望长城内外，惟余莽莽，大河上下,顿失涛涛。"
                                    ];
    CTFramesetterRef framesetter = CTFramesetterCreateWithAttributedString((CFAttributedStringRef)attString);
    CTFrameRef frame = CTFramesetterCreateFrame(framesetter, CFRangeMake(0, [attString length]), path, NULL);
    
//    步骤五
    CTFrameDraw(frame, context);
//    步骤6
    CFRelease(frame);
    CFRelease(path);
    CFRelease(framesetter);
    
}
*/

@end
