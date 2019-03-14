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

- (void)loadView {
    [super loadView];
    
    //
    UIView* viewa = [[UIView alloc] initWithFrame:CGRectMake(30, 100, 100, 50)];
    viewa.backgroundColor = [UIColor redColor];
    [self.view addSubview:viewa];
    [viewa showIndicator];
    
    viewa = [[UIView alloc] initWithFrame:CGRectMake(30, 200, 100, 50)];
    viewa.backgroundColor = [UIColor orangeColor];
    [self.view addSubview:viewa];
    [viewa showIndicator];

    viewa = [[UIView alloc] initWithFrame:CGRectMake(30, 300, 100, 50)];
    viewa.backgroundColor = [UIColor blackColor];
    [self.view addSubview:viewa];
    [viewa showIndicator];
    
    viewa = [[UIView alloc] initWithFrame:CGRectMake(30, 400, 100, 50)];
    viewa.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:viewa];
    [viewa showIndicator];
 
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


@end
