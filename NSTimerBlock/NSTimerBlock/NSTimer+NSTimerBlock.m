//
//  NSTimer+NSTimerBlock.m
//  NSTimerBlock
//
//  Created by bosheng on 16/7/25.
//  Copyright © 2016年 liuhuan. All rights reserved.
//

#import "NSTimer+NSTimerBlock.h"

@implementation NSTimer (NSTimerBlock)


+ (instancetype)lh_scheduledTimerWithTimerInterval:(NSTimeInterval)timeInterval
                                            block:(void(^)())block
                                           repeats:(BOOL)repeats
{
    return [self scheduledTimerWithTimeInterval:timeInterval target:self selector:@selector(lh_blockDeal:) userInfo:[block copy] repeats:repeats];
}

+ (void)lh_blockDeal:(NSTimer *)timer
{
    void (^block)() = [timer userInfo];
    
    if(block){
        block();
    }
}

@end
