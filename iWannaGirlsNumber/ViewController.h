//
//  ViewController.h
//  要号码
//
//  Created by Snowmanzzz on 13-6-25.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MYIntroductionView.h"
@class FUISegmentedControl;
@class FUIButton;


@interface ViewController : UIViewController <MYIntroductionDelegate>

@property (strong, nonatomic) IBOutletCollection(UILabel) NSArray *labels;
@property (weak, nonatomic) IBOutlet FUIButton *okButton;

@property (weak, nonatomic) IBOutlet UITextField *phoneInput;

@property (weak, nonatomic) IBOutlet UIImageView *reallyBackgroundImage;

//TODO
@property (strong, nonatomic) UITapGestureRecognizer *tapAnywhere;

@property (strong, nonatomic) UIColor *backgroundColor;
@property (strong, nonatomic) UIImage *backgroundImage;

@property (weak, nonatomic) IBOutlet UILabel *tt;

@property (weak, nonatomic) IBOutlet FUISegmentedControl *haveBF;

@property (strong, nonatomic) IBOutletCollection(UIView) NSArray *aloneGroup;
@end
