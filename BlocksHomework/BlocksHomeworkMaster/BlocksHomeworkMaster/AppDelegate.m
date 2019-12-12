//
//  AppDelegate.m
//  BlocksHomeworkMaster
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSMutableArray *patients;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    GettingWorse block = ^(Patient *patient) {
        if (patient.temperature > 37.7) {
            [patient makeShot];
        } else {
            NSLog(@"\n\nDoctor saying that %@ is okay!", patient.name);
        }
    };
    
    Patient *steve = [[Patient alloc] initWithName:@"Steve"];
    Patient *john = [[Patient alloc] initWithName:@"Jhon"];
    Patient *mark = [[Patient alloc] initWithName:@"Mark"];
    Patient *colin = [[Patient alloc] initWithName:@"Colin"];
    Patient *james = [[Patient alloc] initWithName:@"James"];
    Patient *michael = [[Patient alloc] initWithName:@"Michael"];
    Patient *larry = [[Patient alloc] initWithName:@"Larry"];
    Patient *gordon = [[Patient alloc] initWithName:@"Gordon"];
    
    self.patients = [[NSMutableArray alloc] initWithArray:@[steve, john, mark, colin, james, michael, larry, gordon]];
    
    
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
