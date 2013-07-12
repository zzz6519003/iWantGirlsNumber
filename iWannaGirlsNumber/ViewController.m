//
//  ViewController.m
//  要号码
//
//  Created by Snowmanzzz on 13-6-25.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "ViewController.h"
#import "SettingViewController.h"

#import "ViewController.h"
#import "UIColor+FlatUI.h"
#import "UISlider+FlatUI.h"
#import "UIStepper+FlatUI.h"
#import "UITabBar+FlatUI.h"
#import "UINavigationBar+FlatUI.h"
#import "FUIButton.h"
#import "FUISwitch.h"
#import "UIFont+FlatUI.h"
#import "FUIAlertView.h"
#import "UIBarButtonItem+FlatUI.h"
#import "UIProgressView+FlatUI.h"
#import "FUISegmentedControl.h"

#import "MYIntroductionPanel.h"
#import "MYIntroductionView.h"



@interface ViewController () <SettingViewControllerEnd>

@end

@implementation ViewController

- (void)viewDidLoad
{

    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    [self.labels enumerateObjectsUsingBlock:^(UILabel *label, NSUInteger idx, BOOL *stop) {
        label.font = [UIFont flatFontOfSize:16];
        label.textColor = [UIColor midnightBlueColor];
    }];
    self.okButton.buttonColor = [UIColor turquoiseColor];
    self.okButton.shadowColor = [UIColor greenSeaColor];
    self.okButton.shadowHeight = 3.0f;
    self.okButton.cornerRadius = 6.0f;
    self.okButton.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    [self.okButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateNormal];
    [self.okButton setTitleColor:[UIColor cloudsColor] forState:UIControlStateHighlighted];
    _tapAnywhere = [[UITapGestureRecognizer alloc]init];
    [self.tapAnywhere addTarget:self action:@selector(tapAnywhereAction)];
    [self.view addGestureRecognizer: self.tapAnywhere];
    
    // add a back button in the navigation bar
//    [self.navigationItem setHidesBackButton:NO];
    
    
}

- (void)viewDidAppear:(BOOL)animated {
    //STEP 1 Construct Panels
    MYIntroductionPanel *panel = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage1"] description:@"Welcome to MYIntroductionView, your 100 percent customizable interface for introductions and tutorials! Simply add a few classes to your project, and you are ready to go!"];
    
    //You may also add in a title for each panel
    MYIntroductionPanel *panel2 = [[MYIntroductionPanel alloc] initWithimage:[UIImage imageNamed:@"SampleImage2"] title:@"Your Ticket!" description:@"MYIntroductionView is your ticket to a great tutorial or introduction!"];
    
    //STEP 2 Create IntroductionView
    
    /*A standard version*/
    //MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) headerImage:[UIImage imageNamed:@"SampleHeaderImage.png"] panels:@[panel, panel2]];
    
    
    /*A version with no header (ala "Path")*/
    //MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) panels:@[panel, panel2]];
    
    /*A more customized version*/
    MYIntroductionView *introductionView = [[MYIntroductionView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height) headerText:@"MYIntroductionView" panels:@[panel, panel2] languageDirection:MYLanguageDirectionLeftToRight];
    [introductionView setBackgroundImage:[UIImage imageNamed:@"SampleBackground"]];
    
    
    //Set delegate to self for callbacks (optional)
    introductionView.delegate = self;
    
    //STEP 3: Show introduction view
    [introductionView showInView:self.view];

}

- (void)tapAnywhereAction {
    [self.phoneInput resignFirstResponder];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)okClicked:(id)sender {
    FUIAlertView *alertView = [[FUIAlertView alloc] initWithTitle:@"Hello" message:@"This is an alert view" delegate:nil cancelButtonTitle:@"Dismiss" otherButtonTitles:@"Do Something", nil];
    alertView.titleLabel.textColor = [UIColor cloudsColor];
    alertView.titleLabel.font = [UIFont boldFlatFontOfSize:16];
    alertView.messageLabel.textColor = [UIColor cloudsColor];
    alertView.messageLabel.font = [UIFont flatFontOfSize:14];
    alertView.backgroundOverlay.backgroundColor = [[UIColor cloudsColor] colorWithAlphaComponent:0.8];
    alertView.alertContainer.backgroundColor = [UIColor midnightBlueColor];
    alertView.defaultButtonColor = [UIColor cloudsColor];
    alertView.defaultButtonShadowColor = [UIColor asbestosColor];
    alertView.defaultButtonFont = [UIFont boldFlatFontOfSize:16];
    alertView.defaultButtonTitleColor = [UIColor asbestosColor];
    [alertView show];
}

- (IBAction)settingClicked:(id)sender {
    SettingViewController * sv = [[SettingViewController alloc] initWithNibName:@"SettingViewController" bundle:nil];
    sv.modalTransitionStyle = UIModalTransitionStyleFlipHorizontal;
    sv.delegate = self;
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:sv];

    [self presentViewController:nav animated:YES completion:nil];
}

- (void)settingViewControllerDidEnd:(SettingViewController *)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewWillAppear:(BOOL)animated {
    if (self.backgroundImage != nil) {
        
    }
}

@end
