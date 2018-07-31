//
//  TabbarVC.m
//  Patients
//
//  Created by Devesh on 05/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "TabbarVC.h"
#import "BROptionsButton.h"
@interface TabbarVC ()<BROptionButtonDelegate>
{
    BOOL btnitemone;
    BOOL btnitemtwo;
}
@property (nonatomic, strong) BROptionsButton *brOptionsButton;

@end

@implementation TabbarVC

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    BROptionsButton *brOption = [[BROptionsButton alloc] initWithTabBar:self.tabBar forItemIndex:2 delegate:self];
    self.brOptionsButton = brOption;
    brOption.layer.cornerRadius=brOption.frame.size.height/2;
    [brOption setImage:[UIImage imageNamed:@"TAB_plus"] forBROptionsButtonState:BROptionsButtonStateNormal];
    [brOption setImage:[UIImage imageNamed:@"close"] forBROptionsButtonState:BROptionsButtonStateOpened];
    
    btnitemone=false;
    btnitemtwo=false;
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


#pragma mark - BROptionsButtonState

- (NSInteger)brOptionsButtonNumberOfItems:(BROptionsButton *)brOptionsButton {
    return 2;
}

- (UIImage*)brOptionsButton:(BROptionsButton *)brOptionsButton imageForItemAtIndex:(NSInteger)index {
    
    UIImage *image;
    if (index==1)
    {
        image = [UIImage imageNamed:@"ADD_cam"];
    }else
    {
        image = [UIImage imageNamed:@"ADD_userr"];
    }

    return image;
}

- (void)brOptionsButton:(BROptionsButton *)brOptionsButton didSelectItem:(BROptionItem *)item
{
    if (item.index==0)
    {
        NSLog(@"item User pressed 2");
    }
    else
        if(item.index==1)
    {
        NSLog(@"item Camera pressed 1");
    }
   
  // [self setSelectedIndex:brOptionsButton.locationIndexInTabBar];


}



#pragma mark - CommonDelegate
/*
#pragma mark - Navigation
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
