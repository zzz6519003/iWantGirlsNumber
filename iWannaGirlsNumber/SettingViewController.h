//
//  SettingViewController.h
//  iWannaGirlsNumber
//
//  Created by Snowmanzzz on 13-6-27.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class SettingViewController;

@protocol SettingViewControllerEnd <NSObject>

- (void)settingViewControllerDidEnd:(SettingViewController *)sender;

@end

@interface SettingViewController : UIViewController

@property (nonatomic, weak) id<SettingViewControllerEnd> delegate;

@end
