//
//  AppDelegate.m
//  BlocksHomeworkStudent
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - creating students and putting into array
    
    Student *mark = [[Student alloc] initWithName:@"Mark" lastName:@"Brown"];
    Student *steve = [[Student alloc] initWithName:@"Steve" lastName:@"Brown"];
    Student *peter = [[Student alloc] initWithName:@"Peter" lastName:@"Tramp"];
    Student *colin = [[Student alloc] initWithName:@"Colin" lastName:@"Wonk"];
    Student *roger = [[Student alloc] initWithName:@"Roger" lastName:@"Wonk"];
    Student *rachel = [[Student alloc] initWithName:@"Rachel" lastName:@"Stuart"];
    Student *stuart = [[Student alloc] initWithName:@"Stuart" lastName:@"Green"];
    Student *william = [[Student alloc] initWithName:@"William" lastName:@"Hill"];
    Student *sam = [[Student alloc] initWithName:@"Sam" lastName:@"Bridges"];
    Student *samanta = [[Student alloc] initWithName:@"Samanta" lastName:@"Freeman"];
    Student *morgan = [[Student alloc] initWithName:@"Morgan" lastName:@"Freeman"];
    
    NSArray *students = @[mark, steve, peter, colin, roger, rachel, stuart, william, sam, samanta, morgan];
    
    NSArray *sortedStudents = [students sortedArrayUsingComparator:^NSComparisonResult(id  _Nonnull obj1, id  _Nonnull obj2) {
        Student *student1 = (Student *) obj1;
        Student *student2 = (Student *) obj2;
        
        if ([student1.lastName compare: student2.lastName] == NSOrderedSame) {
            return [student1.name compare:student2.name];
        } else {
            return [student1.lastName compare: student2.lastName];
        }
    }];
    
    for (Student *student in sortedStudents) {
        NSLog(@"%@ %@", student.lastName, student.name);
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
