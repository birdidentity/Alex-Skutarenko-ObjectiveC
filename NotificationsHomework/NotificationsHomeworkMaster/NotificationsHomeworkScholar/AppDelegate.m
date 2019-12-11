//
//  AppDelegate.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Businessman.h"
#import "Doctor.h"
#import "Pensioner.h"
#import "AppDelegate.h"
#import "Government.h"

@interface AppDelegate ()

@property (strong, nonatomic) Government *government;
@property (strong, nonatomic) Businessman *businessman;
@property (strong, nonatomic) Doctor *doctor;
@property (strong, nonatomic) Pensioner *pensioner;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - people and government declaration
    self.government = [Government new];
    
    self.doctor = [Doctor new];
    self.doctor.name = @"Steve Doctor";
    
    self.businessman = [Businessman new];
    self.businessman.name = @"Donald Tramp";
    
    self.pensioner = [Pensioner new];
    self.pensioner.name = @"Garry Oldman";
    
#pragma mark - goverment property changes
    
    self.government.salary = 2000;
    self.government.averagePrice += 1;
    self.government.taxLevel = 3;
    self.government.pension = 1000;
    
    self.government.averagePrice *= 2;
    
    return YES;
}


#pragma mark - UISceneSession lifecycle


- (UISceneConfiguration *)application:(UIApplication *)application configurationForConnectingSceneSession:(UISceneSession *)connectingSceneSession options:(UISceneConnectionOptions *)options {
    // Called when a new scene session is being created.
    // Use this method to select a configuration to create the new scene with.
    return [[UISceneConfiguration alloc] initWithName:@"Default Configuration" sessionRole:connectingSceneSession.role];
}


- (void)application:(UIApplication *)application didDiscardSceneSessions:(NSSet<UISceneSession *> *)sceneSessions {
    // Called when the user discards a scene session.
    // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
    // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
}


@end
