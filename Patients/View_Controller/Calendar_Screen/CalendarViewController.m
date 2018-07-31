//
//  CalendarViewController.m
//  Patients
//
//  Created by Devesh on 12/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "CalendarViewController.h"
#import "UIViewController+LMSideBarController.h"
#import "Chat_VC.h"

@interface CalendarViewController ()

@end

@implementation CalendarViewController

- (IBAction)leftMenuButtonTapped:(id)sender
{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)BtnChatClicked:(id)sender
{
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    Chat_VC * vc =[story instantiateViewControllerWithIdentifier:@"chatScreen"];
    [self presentViewController:vc animated:true completion:nil];
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
