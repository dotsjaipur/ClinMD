//
//  ReadMoreVC.m
//  Patients
//
//  Created by Devesh on 16/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "ReadMoreVC.h"
#import "FeedsVC.h"

@interface ReadMoreVC ()

@property (nonatomic,assign)IBOutlet UIButton * btnBack;

@end

@implementation ReadMoreVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    ScrollVC = [[UIScrollView alloc]initWithFrame:CGRectMake(0, 72, self.view.frame.size.width, self.view.frame.size.height)];
    [self.view addSubview:ScrollVC];
    [ScrollVC setContentSize:CGSizeMake(self.view.frame.size.width, self.view.frame.size.height)];
    [ScrollVC addSubview:imagFeed];
    [ScrollVC addSubview:txtView];
    
    _btnBack.layer.cornerRadius=_btnBack.frame.size.height/2;
    
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
