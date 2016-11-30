//
//  JackpotTableViewController.m
//  Jackpot
//
//  Created by Jonathan Archille on 11/28/16.
//  Copyright © 2016 The Iron Yard. All rights reserved.
//

#import "JackpotTableViewController.h"
#import "QuickPick.h"

@interface JackpotTableViewController ()

@property (nonatomic) NSMutableArray *quickpicks;


@end

@implementation JackpotTableViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
     self.quickpicks = [[NSMutableArray alloc] init];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {

    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {

    return self.quickpicks.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"QuickpicksCell" forIndexPath:indexPath];
    
    QuickPick *aQuickPick = self.quickpicks[indexPath.row];
    cell.textLabel.text = [aQuickPick ticketText];
    cell.detailTextLabel.textColor = [UIColor greenColor];
    cell.detailTextLabel.text = @"✅ $10";
    
    return cell;
}


#pragma mark - Action handler

- (IBAction)createTicket:(id)sender
{
    //QuickPick *aQuickpick = [[QuickPick alloc] initWithAllowableIntegers];
    //[self.quickpicks addObject:aQuickpick];
    [self.quickpicks addObject:[[QuickPick alloc] initWithAllowableIntegers]];
    [[self.quickpicks lastObject] createTicket];
    [self.tableView reloadData];

}

@end
