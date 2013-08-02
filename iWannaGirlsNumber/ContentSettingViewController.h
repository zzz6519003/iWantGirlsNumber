//
//  ContentSettingViewController.h
//  iWannaGirlsNumber
//
//  Created by Snowmanzzz on 13-7-10.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ContentSettingViewController : UITableViewController

@property (strong, nonatomic) IBOutlet UITableViewCell *nameCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *heightCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *breastBig;

@property (strong, nonatomic) IBOutlet UITableViewCell *haveBfCell;

@property (weak, nonatomic) IBOutlet UISwitch *haveBf;
@end
