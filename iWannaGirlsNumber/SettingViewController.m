//
//  SettingViewController.m
//  iWannaGirlsNumber
//
//  Created by Snowmanzzz on 13-6-27.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "SettingViewController.h"
#import "BackGroundModeSelectionViewController.h"

@interface SettingViewController ()
@end

@implementation SettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
//    CGRect titleRect = CGRectMake(240, 240, 300, 40);
//    UILabel *tableTitle = [[UILabel alloc] initWithFrame:titleRect];
//    tableTitle.textColor = [UIColor blueColor];
//    tableTitle.backgroundColor = [self.settingTable backgroundColor];
//    tableTitle.opaque = YES;
//    tableTitle.font = [UIFont boldSystemFontOfSize:18];
//    tableTitle.text = @"shit";
//    [tableTitle setCenter:CGPointMake(240, tablbeTitle.center.x / 2)];
    self.title = @"设置";
    self.settingTable.tableHeaderView = self.header1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

#pragma table view

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.row == 0) {
        UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"backgroundCell"];
//        UILabel *label = [[UILabel alloc] init];
//        label.text = @"oops";
//        [cell.contentView addSubview:label];
        cell.textLabel.text = @"背景设置";
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        return cell;
    } else {
        return [[UITableViewCell alloc] init];
    }
}
@class BackGroundModeSelectionViewController;
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    BackGroundModeSelectionViewController *vc = [[BackGroundModeSelectionViewController alloc]initWithNibName:@"BackGroundModeSelectionViewController" bundle:nil];
    [[self navigationController] pushViewController:vc animated:YES];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnMain:(id)sender {
    [self.delegate settingViewControllerDidEnd:self];
}


@end
