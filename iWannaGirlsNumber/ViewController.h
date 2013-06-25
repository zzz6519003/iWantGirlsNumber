//
//  ViewController.h
//  要号码
//
//  Created by Snowmanzzz on 13-6-25.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class FUIButton;

@interface ViewController : UIViewController

@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *labels;
@property (weak, nonatomic) IBOutlet FUIButton *okButton;

@end
