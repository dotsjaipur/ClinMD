//
//  FeedsVC.m
//  Patients
//
//  Created by Devesh on 03/07/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import "FeedsVC.h"
#import "UIViewController+LMSideBarController.h"
#import "ReadMoreVC.h"
#import "Chat_VC.h"
@import Firebase;
@interface FeedsVC ()

@property (strong, nonatomic) NSArray * arrData;
@property (strong, nonatomic) FIRDatabaseReference *ref;

@end

@implementation FeedsVC

- (void)viewDidLoad
{
    [super viewDidLoad];
    
self.ref = [[FIRDatabase database] reference];
    
    FIRDatabaseReference *globalRef = [[FIRDatabase database] reference];
   
    self.arrData = [[NSArray alloc]init];
    
    FIRDatabaseReference *scoresRef = [[FIRDatabase database] referenceWithPath:@"Doctors"];
    [scoresRef observeEventType:FIRDataEventTypeChildAdded withBlock:^(FIRDataSnapshot *snapshot) {
        if(snapshot.value == [NSNull null]) {
            NSLog(@"No messages");
        } else {
            NSLog(@"First message is: %@", snapshot.value);
            NSDictionary *postDict = snapshot.value;
            NSLog(@"%@", postDict.description);
        }
    }];
}

- (IBAction)leftMenuButtonTapped:(id)sender
{
    [self.sideBarController showMenuViewControllerInDirection:LMSideBarControllerDirectionLeft];
}


#pragma mark - Table View Data source
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:
(NSInteger)section {
    return 20;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:
(NSIndexPath *)indexPath {
    static NSString *cellIdentifier = @"cellID";
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:
                             cellIdentifier];
    
    UIButton * BtnreadMore = (UIButton *) [cell viewWithTag:31];

    BtnreadMore.tag=indexPath.row;
    [BtnreadMore addTarget:self action:@selector(ReadMoreButtonClicked:) forControlEvents:UIControlEventTouchUpInside];


    
    if (cell == nil) {
        cell = [[UITableViewCell alloc]initWithStyle:
                UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return cell;
}

-(IBAction)BtnChatClicked:(id)sender
{
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    Chat_VC * vc =[story instantiateViewControllerWithIdentifier:@"chatScreen"];
    [self presentViewController:vc animated:true completion:nil];
}

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

-(void)ReadMoreButtonClicked:(id)sender
{
    UIStoryboard *story=[UIStoryboard storyboardWithName:@"Main" bundle:nil];
    ReadMoreVC * vc =[story instantiateViewControllerWithIdentifier:@"btnReadMore"];
    [self presentViewController:vc animated:true completion:nil];
}

#pragma mark - TableView delegate

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:
(NSIndexPath *)indexPath {
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    NSLog(@"Section:%d Row:%d selected and its data is %@",
          indexPath.section,indexPath.row,cell.textLabel.text);
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
