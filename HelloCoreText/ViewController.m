//
//  ViewController.m
//  HelloCoreText
//
//  Created by admin on 15/1/31.
//  Copyright (c) 2015年 jianleer. All rights reserved.
//

#import "ViewController.h"
#import "CTFrameParserConfig.h"
#import "CTFrameParser.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.

    CTFrameParserConfig *config = [[CTFrameParserConfig alloc] init];
    config.textColor            = [UIColor redColor];
    config.width                = self.ctView.width;

    CoreTextData *data          = [CTFrameParser parseContent:@"按照上述原则，我们简CTDisplayView中的内容分拆" config:config];
    self.ctView.data            = data;
    self.ctView.height          = data.height;
    self.ctView.backgroundColor = [UIColor yellowColor];

//    [self.view addSubview:_ctView];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
