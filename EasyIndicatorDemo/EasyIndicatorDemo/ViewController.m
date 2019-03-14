//
//  ViewController.m
//  EasyIndicatorDemo
//
//  Created by Sen on 2019/3/13.
//  Copyright © 2019年 Sen. All rights reserved.
//

#import "ViewController.h"
#import "UIView+EasyIndicator.h"

@interface ViewController ()

@end

@implementation ViewController
{
    CGFloat easyy;
}

- (void)loadView {
    [super loadView];
    
    [self updateEasyy:nil];
    
    //view
    UIView* viewx = [[UIView alloc] initWithFrame:CGRectMake(30, easyy, CGRectGetWidth(self.view.frame)-60, 100)];
    viewx.backgroundColor = [UIColor redColor];
    [self.view addSubview:viewx];
    UITapGestureRecognizer* tapViewx = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapViewx:)];
    [viewx addGestureRecognizer:tapViewx];
    
    [self updateEasyy:viewx];
    
    //image
    UIImageView* imagex = [[UIImageView alloc] initWithFrame:CGRectMake(30, easyy, CGRectGetWidth(self.view.frame)-60, 100)];
    imagex.backgroundColor = [UIColor cyanColor];
    imagex.userInteractionEnabled = YES;
    [self.view addSubview:imagex];
    UITapGestureRecognizer* tapImagex = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapImagex:)];
    [imagex addGestureRecognizer:tapImagex];
    
    [self updateEasyy:imagex];
    
    //btn
    UIButton* btnx = [UIButton buttonWithType:UIButtonTypeSystem];
    btnx.frame = CGRectMake(30, easyy, CGRectGetWidth(self.view.frame)-60, 50);
    btnx.backgroundColor = [UIColor greenColor];
    btnx.layer.cornerRadius = 8;
    [btnx setTitle:@"点击" forState:UIControlStateNormal];
    [btnx addTarget:self action:@selector(btnOfBtnx:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:btnx];
    
    [self updateEasyy:btnx];
    
    //switch
    UISwitch* switchx = [[UISwitch alloc] init];
    [self.view addSubview:switchx];
    [switchx sizeToFit];
    switchx.frame = CGRectMake(CGRectGetWidth(self.view.frame)-switchx.bounds.size.width-30, easyy, switchx.bounds.size.width, switchx.bounds.size.height);
    [switchx addTarget:self action:@selector(changeSwitchx:) forControlEvents:UIControlEventValueChanged];
    
    [self updateEasyy:switchx];
}

- (void)updateEasyy:(UIView*)view {
    
    if (!view) {
        easyy += 100;
        return;
    }
    easyy += CGRectGetHeight(view.bounds);
    easyy += 50;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


#pragma mark - action
- (void)tapViewx:(UITapGestureRecognizer*)sender
{
    UIView* tmp = sender.view;
    [self indicatorTestOnView:tmp];
}
- (void)tapImagex:(UITapGestureRecognizer*)sender
{
    UIView* tmp = sender.view;
    [self indicatorTestOnView:tmp];
}
- (void)btnOfBtnx:(UIButton*)sender
{
    [self indicatorTestOnView:sender];
}
- (void)changeSwitchx:(UISwitch*)sender
{
    [self indicatorTestOnView:sender];
}

- (void)indicatorTestOnView:(UIView*)view
{
    [view showIndicator];
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(3 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [view stopIndicator];
    });
}

@end
