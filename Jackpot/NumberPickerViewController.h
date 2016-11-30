//
//  NumberPickerViewController.h
//  Jackpot
//
//  Created by Jonathan Archille on 11/29/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberPickerViewController : UIViewController <UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *chooseWinningNumbersPickerView;

- (IBAction)willCheckQuickpicks:(UIButton *)sender;


@end
