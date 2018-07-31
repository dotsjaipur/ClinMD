//
//  FeedsVC.h
//  Patients
//
//  Created by Devesh on 03/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import <UIKit/UIKit.h>
@import Firebase;
@interface FeedsVC : UIViewController<UITableViewDataSource,UITableViewDelegate>

@property (weak, nonatomic) IBOutlet UITableView *feeds_Table;


@end
