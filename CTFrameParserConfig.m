//
//  CTFrameParserConfig.m
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#import "CTFrameParserConfig.h"
#import "Header.h"
@implementation CTFrameParserConfig

-(id)init
{
    self = [super init];
    if (self) {
        _width     = 200.0f;
        _fontSize  = 16.0f;
        _lineSpace = 8.0f;
        _textColor = RGB(108, 108, 108, 1.0);
    }
    return self;
}
@end
