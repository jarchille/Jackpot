//
//  QuickPick.m
//  Jackpot
//
//  Created by Jonathan Archille on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//


#import "QuickPick.h"

@interface QuickPick ()
{
    NSMutableArray *allowableIntegers;
    NSString *winningNumbers;
}

@end


@implementation QuickPick


- (instancetype)initWithAllowableIntegers
{
    self = [super init];
    if (self)
    {
        allowableIntegers = [[NSMutableArray alloc] init];
        for (int n = 1; n <= 53; n++)
        {
            [allowableIntegers addObject:[NSString stringWithFormat:@"%d   ", n]];
        }
    }
    return self;
}

- (NSString *)createTicket
{
    winningNumbers = @"";
    while (allowableIntegers.count >= 48)
    {
        NSUInteger randomIndex = arc4random_uniform(allowableIntegers.count);
        winningNumbers = [winningNumbers stringByAppendingString:[allowableIntegers objectAtIndex:randomIndex]];
        [allowableIntegers removeObjectAtIndex:randomIndex];
    }
    return winningNumbers;
}
@end

