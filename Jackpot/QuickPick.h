//
//  QuickPick.h
//  Jackpot
//
//  Created by Jonathan Archille on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//


#import <Foundation/Foundation.h>

@interface QuickPick : NSObject

- (instancetype)initWithAllowableIntegers;
- (NSString *)createTicket;

@end
