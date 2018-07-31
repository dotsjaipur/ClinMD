//
//  LMMainNavigationController.h
//  LMSideBarControllerDemo
//
//  Created by LMinh on 10/11/15.
//  Copyright © 2015 LMinh. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "FeedsVC.h"

@interface LMMainNavigationController : UINavigationController

@property (nonatomic, strong) FeedsVC *homeViewController;

- (void)showHomeViewController;


@end
