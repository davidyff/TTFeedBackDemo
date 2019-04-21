//
//  ViewController.m
//  TTFeedBackDemo
//
//  Created by 杨飞飞 on 2019/4/21.
//  Copyright © 2019年 yangfeifei. All rights reserved.
//

#import "ViewController.h"
#import "UILabel+YBAttributeTextTapAction.h"
#import "TTFeedbackViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
    [self configInfoLabel];
}
- (void)configInfoLabel {
    
    UILabel *infoLabel = [[UILabel alloc] initWithFrame:CGRectMake(20, 200, [UIScreen mainScreen].bounds.size.width-40, 20)];
    infoLabel.font = [UIFont systemFontOfSize:12.0f];
    NSString *infoStr = @"欢迎使用探探, 在使用过程中有疑问请反馈";
    NSMutableAttributedString *attributeStr = [[NSMutableAttributedString alloc] initWithString:infoStr];
    // 蓝色，下划线
    [attributeStr setAttributes:@{NSUnderlineStyleAttributeName:@(NSUnderlineStyleSingle),NSForegroundColorAttributeName:[UIColor blueColor]}
                          range:[infoStr rangeOfString:@"反馈"]];
    infoLabel.attributedText = attributeStr;
    // 点击事件
    [infoLabel yb_addAttributeTapActionWithStrings:@[@"反馈"] tapClicked:^(NSString *string, NSRange range, NSInteger index) {
        TTFeedbackViewController *vc = [[TTFeedbackViewController alloc] initWithNibName:NSStringFromClass([TTFeedbackViewController class]) bundle:nil];
        [self presentViewController:vc animated:YES completion:nil];
    }];
    infoLabel.enabledTapEffect = NO;
    [self.view addSubview:infoLabel];

}

@end
