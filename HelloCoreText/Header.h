//
//  Header.h
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#ifdef DEBUG
#define debugLog(...)     NSLog(__VA_ARGS__)
#define debugMethod()     NSLog(@"%s",__func__)
#else
#define debugLog(...)
#define debugMethod()
#endif

#define RGB(R,G,B,A)     [UIColor colorWithRed:R/255.0 green:G/255.0 blue:B/255.0 alpha:A]
