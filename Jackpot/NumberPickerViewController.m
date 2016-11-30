//
//  NumberPickerViewController.m
//  Jackpot
//
//  Created by Jonathan Archille on 11/29/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "NumberPickerViewController.h"
#import "QuickPick.h"

@interface NumberPickerViewController ()
{
    NSArray *rangeOfNumberChoices;
    NSMutableArray *winningCombination;
}

@end

@implementation NumberPickerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    QuickPick *aQuickpick = [[QuickPick alloc] initWithAllowableIntegers];
    rangeOfNumberChoices = [aQuickpick possibleTicketNumbers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Picker view data source

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 6;
}

- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return 53;
}

#pragma mark - Picker view delegate

- (NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [rangeOfNumberChoices objectAtIndex:row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    winningCombination = [[NSMutableArray alloc] init];
    [winningCombination addObject:[NSString stringWithFormat:@"%ld", (long)[pickerView selectedRowInComponent:0] + 1]];
    [winningCombination addObject:[NSString stringWithFormat:@"%ld", (long)[pickerView selectedRowInComponent:1] + 1]];
    [winningCombination addObject:[NSString stringWithFormat:@"%ld", (long)[pickerView selectedRowInComponent:2] + 1]];
    [winningCombination addObject:[NSString stringWithFormat:@"%ld", (long)[pickerView selectedRowInComponent:3] + 1]];
    [winningCombination addObject:[NSString stringWithFormat:@"%ld", (long)[pickerView selectedRowInComponent:4] + 1]];
    [winningCombination addObject:[NSString stringWithFormat:@"%ld", (long)[pickerView selectedRowInComponent:5] + 1]];
    NSLog(@"%@", winningCombination);
}

 - (IBAction)checkQuickpicks:(id)sender
{
    
}

- (IBAction)willCheckQuickpicks:(UIButton *)sender {
}
@end
