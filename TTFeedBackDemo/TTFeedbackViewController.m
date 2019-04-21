//
//  TTFeedbackViewController.m
//  TTFeedBackDemo
//
//  Created by 杨飞飞 on 2019/4/21.
//  Copyright © 2019年 yangfeifei. All rights reserved.
//

#import "TTFeedbackViewController.h"

@interface TTFeedbackViewController ()

@end

@implementation TTFeedbackViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor greenColor];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)dismissVC:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
