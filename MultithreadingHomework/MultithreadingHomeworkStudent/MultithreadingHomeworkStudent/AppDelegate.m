//
//  AppDelegate.m
//  MultithreadingHomeworkStudent
//
//  Created by Vladislav Boyko on 12/13/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@property (strong, nonatomic) NSArray *students;

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - students declaration
    
    Student *studentMark = [[Student alloc] initWithName: @"Mark"];
    Student *studentSteve = [[Student alloc] initWithName: @"Steve"];
    Student *studentColin = [[Student alloc] initWithName: @"Colin"];
    Student *studentFrank = [[Student alloc] initWithName: @"Frank"];
    Student *studentGarry = [[Student alloc] initWithName: @"Garry"];
    
    self.students = @[studentMark, studentSteve, studentColin, studentFrank, studentGarry];
    
    NSRange range = NSMakeRange(0, 10000000);

#pragma mark - program performance
    
    for (Student *student in self.students) {
        [student guessAnswer:arc4random() % 10000001 inRange:range];
    }
    
    
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
