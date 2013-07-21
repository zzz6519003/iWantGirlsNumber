//
//  SettingViewController.m
//  iWannaGirlsNumber
//
//  Created by Snowmanzzz on 13-6-27.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "SettingViewController.h"
#import "BackGroundModeSelectionViewController.h"
#import "ContentSettingViewController.h"

#define TUTORIAL_KEY @"tutorial_read"

@interface SettingViewController ()
@end

@implementation SettingViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        //        self.navigationItem
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
    
    
    // set a back button
    UIBarButtonItem *btn = [[UIBarButtonItem alloc] initWithTitle:@"back" style:UIBarButtonItemStyleBordered target:self action:@selector(returnMain:)];
    [self.navigationItem setLeftBarButtonItem:btn animated:YES];
    
    
    [self.tutSwitchSegment addTarget:self action:@selector(tutValueChanged) forControlEvents:UIControlEventValueChanged];
    
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    if (section == 0) {
        return 3;
    }
    if (section == 1) {
        return 1;
    }
    return 1;
}

#pragma table view

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"backgroundCell"];
            //        UILabel *label = [[UILabel alloc] init];
            //        label.text = @"oops";
            //        [cell.contentView addSubview:label];
            cell.textLabel.text = @"背景设置";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            return cell;
        } else if (indexPath.row == 2) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"shitCell"];
            cell.textLabel.text = @"いばせあに";
            return cell;
        } else if (indexPath.row == 1) {
            UITableViewCell *cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"contentCell"];
            cell.textLabel.text = @"内容设置";
            cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
            return cell;
        }
    }
    if (indexPath.row == 0) {
        
        return self.tutTableCell;
    }
    
    //    return cell;
    return nil;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    [self.settingTable deselectRowAtIndexPath:indexPath animated:YES];
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            BackGroundModeSelectionViewController *vc = [[BackGroundModeSelectionViewController alloc] initWithNibName:@"BackGroundModeSelectionViewController" bundle:nil];
            [[self navigationController] pushViewController:vc animated:YES];
        }
        else if (indexPath.row == 1){
            ContentSettingViewController *csv = [[ContentSettingViewController alloc]initWithNibName:@"ContentSettingViewController" bundle:nil];
            [[self navigationController] pushViewController:csv animated:YES];
        }
    }
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)returnMain:(id)sender {
    [self.delegate settingViewControllerDidEnd:self];
}

//- (IBAction)tutValueChanged:(id)sender {
//    NSLog(@"tutChanged");
//    NSUserDefaults *df = [NSUserDefaults standardUserDefaults];
//    [df setBool:YES forKey:TUTORIAL_KEY];
//    NSLog(@"sa");
//    NSLog(df.description);
//}

- (void)tutValueChanged {
//    NSLog(@"tutChanged");
    NSUserDefaults *df = [NSUserDefaults standardUserDefaults];
    [df setBool:YES forKey:TUTORIAL_KEY];
    
    NSLog(@"sa");
    NSLog([df.dictionaryRepresentation description]);
}

- (void)viewDidUnload {
    [self setTutCell:nil];
    [self setTutTableCell:nil];
    [self setTutSwitchSegment:nil];
    [self setTutSwitchSegment:nil];
    [super viewDidUnload];
}
@end
