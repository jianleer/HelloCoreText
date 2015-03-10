//
//  CTDisplayView.h
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreText/CoreText.h>
#import "CoreTextData.h"
#import "UIView+frameAdjust.h"
@interface CTDisplayView : UIView

@property (strong,nonatomic)CoreTextData *data;

@end
