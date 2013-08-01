//
//  SettingViewController.h
//  iWannaGirlsNumber
//
//  Created by Snowmanzzz on 13-6-27.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingViewController;

@class ViewController;

@protocol SettingViewControllerEnd <NSObject>

- (void)settingViewControllerDidEnd:(SettingViewController *)sender;

@end

@interface SettingViewController : UIViewController <UITableViewDataSource, UITableViewDelegate>

@property (nonatomic, weak) id<SettingViewControllerEnd> delegate;

@property (weak, nonatomic) IBOutlet UITableView *settingTable;

@property (strong, nonatomic) IBOutlet UIView *header1;

@property (strong, nonatomic) IBOutlet UIView *tutCell;

@property (strong, nonatomic) IBOutlet UITableViewCell *tutTableCell;

@property (weak, nonatomic) IBOutlet UISwitch *tutSwitchSegment;

@property (weak, nonatomic) ViewController *vc;




@end
