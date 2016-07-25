//
//  NSTimer+NSTimerBlock.h
//  NSTimerBlock
//
//  Created by bosheng on 16/7/25.
//  Copyright © 2016年 liuhuan. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSTimer (NSTimerBlock)

+ (instancetype)lh_scheduledTimerWithTimerInterval:(NSTimeInterval)timeInterval
                                             block:(void(^)())block
                                           repeats:(BOOL)repeats;

@end
