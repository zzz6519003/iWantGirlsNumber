//
//  BackGroundModeSelectionViewController.m
//  iWannaGirlsNumber
//
//  Created by Snowmanzzz on 13-7-6.
//  Copyright (c) 2013年 apple. All rights reserved.
//

#import "BackGroundModeSelectionViewController.h"
#import "ViewController.h"
#import "PureColorChooseViewController.h"


@interface BackGroundModeSelectionViewController ()

@end

@implementation BackGroundModeSelectionViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
        NSLog(@"shit");
        self.title = @"选择模式";
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)pureColorSelected:(id)sender {
    PureColorChooseViewController *pccv = [[PureColorChooseViewController alloc] initWithNibName:@"PureColorChooseViewController" bundle:nil];
    [self.navigationController pushViewController:pccv animated:YES];

}

- (IBAction)imagePickSelected:(id)sender {
    UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
    ipc.delegate = self;
    [self presentViewController:ipc animated:YES completion:nil];
}

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info {
    [self.mainViewController setBackgroundImage:info[UIImagePickerControllerOriginalImage]];
    [self dismissModalViewControllerAnimated:YES];
}

- (IBAction)placeAPicture:(id)sender {
    UIImagePickerController *ipc = [[UIImagePickerController alloc] init];
//    ipc.tag = 1;
    ipc.delegate = self;
    [self presentViewController:ipc animated:YES completion:nil];
}


@end
