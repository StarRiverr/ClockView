//
//  ViewController.m
//  ClockView
//
//  Created by changho on 2019/11/30.
//  Copyright © 2019 changho. All rights reserved.
//

#import "ViewController.h"
#import "ClockView.h"

@interface ViewController ()

@property(nonatomic,strong) ClockView *clockView;

@property(nonatomic,strong) NSTimer *timer;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    [self initSubViews];
    
    //添加定时器
    self.timer = [NSTimer timerWithTimeInterval:1.0 target:self selector:@selector(timeChange) userInfo:nil repeats:YES];
    [[NSRunLoop currentRunLoop] addTimer:self.timer forMode:NSDefaultRunLoopMode];
    [self timeChange];
}

- (void)initSubViews {
    self.view.backgroundColor = [UIColor blackColor];
    
    self.clockView = [[ClockView alloc] initWithFrame:CGRectMake(0, self.view.frame.size.height / 2 - self.view.frame.size.height * 0.5 / 2 , self.view.frame.size.width, self.view.frame.size.height * 0.5)];
    [self.view addSubview:self.clockView];
}

#pragma mark - 定时器事件

- (void)timeChange {
    [self.clockView setTransform];
}

@end
