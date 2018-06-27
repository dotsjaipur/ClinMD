//
//  AppDelegate.h
//  Patients
//
//  Created by Devesh on 27/06/18.
//  Copyright © 2018 Devesh Pareek. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <CoreData/CoreData.h>

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;

@property (readonly, strong) NSPersistentContainer *persistentContainer;

- (void)saveContext;


@end

