//
//  AppDelegate.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Government.h"
#import "Doctor.h"
#import "Pensioner.h"
#import "Businessman.h"

@interface AppDelegate ()

@property (strong, nonatomic) Government *government;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - people and government declaration
    self.government = [Government new];
    //
    Doctor *bestDoctor = [Doctor new];
    bestDoctor.name = @"Jack Pirate";
    //
    Businessman *monopolist = [Businessman new];
    monopolist.name = @"Donald Tramp";
    //
    Pensioner *oldMan = [Pensioner new];
    oldMan.name = @"Peter Donovan";
    
#pragma mark - goverment property changes
    
    self.government.salary = 2000;
    self.government.averagePrice = 20.1f;
    self.government.taxLevel = 3;
    self.government.pension = 1000;
    
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
