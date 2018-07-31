//
//  LMMainNavigationController.m
//  LMSideBarControllerDemo
//
//  Created by LMinh on 10/11/15.
//  Copyright © 2015 LMinh. All rights reserved.
//

#import "LMMainNavigationController.h"

@implementation LMMainNavigationController

- (FeedsVC *)homeViewController
{
    if (!_homeViewController) {
        _homeViewController = [self.storyboard instantiateViewControllerWithIdentifier:@"feedsview"];
    }
    return _homeViewController;
}


- (void)showHomeViewController
{
    [self setViewControllers:@[self.homeViewController] animated:YES];
}


@end
