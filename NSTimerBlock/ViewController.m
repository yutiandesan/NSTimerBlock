//
//  ViewController.m
//  NSTimerBlock
//
//  Created by bosheng on 16/7/25.
//  Copyright © 2016年 liuhuan. All rights reserved.
//

#import "ViewController.h"
#import "NSTimer+NSTimerBlock.h"

@interface ViewController ()
{
    NSTimer * timer;
}

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    __block int i = 0;
    timer = [NSTimer lh_scheduledTimerWithTimerInterval:1.0 block:^{
        NSLog(@"%d",++i);
    } repeats:YES];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
