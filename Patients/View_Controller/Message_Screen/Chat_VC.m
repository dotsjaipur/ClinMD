//
//  Chat_VC.m
//  Patients
//
//  Created by Devesh on 16/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "Chat_VC.h"

@interface Chat_VC ()

@end

@implementation Chat_VC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

-(IBAction)BtnBackClicked:(id)sender
{
    [[self presentingViewController] dismissViewControllerAnimated:NO completion:nil];
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
