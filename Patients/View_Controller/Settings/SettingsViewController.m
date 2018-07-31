//
//  SettingsViewController.m
//  Patients
//
//  Created by Devesh on 12/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "SettingsViewController.h"
#import "UIViewController+LMSideBarController.h"

@interface SettingsViewController ()

@end

@implementation SettingsViewController

- (IBAction)leftMenuButtonTapped:(id)sender
{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
