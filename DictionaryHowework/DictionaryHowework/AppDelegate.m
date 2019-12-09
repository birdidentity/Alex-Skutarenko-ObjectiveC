//
//  AppDelegate.m
//  DictionaryHowework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Student.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Student *studentOne = [[Student alloc] initWithName:@"Peter" lastName:@"Walkman"];
    Student *studentTwo = [[Student alloc] initWithName:@"Sara" lastName:@"Jordan"];
    Student *studentThree = [[Student alloc] initWithName:@"Methew" lastName:@"Freeman"];
    Student *studentFour = [[Student alloc] initWithName:@"Joy" lastName:@"Cartman"];
    Student *studentFive = [[Student alloc] initWithName:@"Eric" lastName:@"Brown"];
    Student *studentSix = [[Student alloc] initWithName:@"Sonia" lastName:@"Franko"];
    Student *studentSeven = [[Student alloc] initWithName:@"Adam" lastName:@"Stone"];
    Student *studentEight = [[Student alloc] initWithName:@"Michael" lastName:@"Porter"];
    Student *studentNine = [[Student alloc] initWithName:@"Natasha" lastName:@"Piner"];
    Student *studentTen = [[Student alloc] initWithName:@"Nick" lastName:@"Pike"];
    
    NSDictionary *studentDictionary = [NSDictionary dictionaryWithObjectsAndKeys:
                                       studentOne, [NSString stringWithFormat:@"%@ %@", studentOne.name, studentOne.lastName],
                                       studentTwo, [NSString stringWithFormat:@"%@ %@", studentTwo.name, studentTwo.lastName],
                                       studentThree, [NSString stringWithFormat:@"%@ %@", studentThree.name, studentThree.lastName],
                                       studentFour, [NSString stringWithFormat:@"%@ %@", studentFour.name, studentFour.lastName],
                                       studentFive, [NSString stringWithFormat:@"%@ %@", studentFive.name, studentFive.lastName],
                                       studentSix, [NSString stringWithFormat:@"%@ %@", studentSix.name, studentSix.lastName],
                                       studentSeven, [NSString stringWithFormat:@"%@ %@", studentSeven.name, studentSeven.lastName],
                                       studentEight, [NSString stringWithFormat:@"%@ %@", studentEight.name, studentEight.lastName],
                                       studentNine, [NSString stringWithFormat:@"%@ %@", studentNine.name, studentNine.lastName],
                                       studentTen, [NSString stringWithFormat:@"%@ %@", studentTen.name, studentTen.lastName],
                                       nil];
    
    NSLog(@"%@", studentDictionary);
    
    for (Student *student in studentDictionary) {
        NSLog(@"%@", student);
        [[studentDictionary objectForKey:student] greeting];
    }
    
    NSSortDescriptor *sortDesc = [[NSSortDescriptor alloc] initWithKey:@"name" ascending:YES];
    
//    NSArray *sortedArray = [[NSArray alloc[[studentDictionary allKeys] sortedArrayUsingDescriptors:@[sortDesc]]];]
    
    NSArray *sortedArray = [[NSArray alloc] initWithArray:[[studentDictionary allKeys] sortedArrayUsingSelector:@selector(compare:)]];
    
    for (NSString *fullName in sortedArray) {
        NSLog(@"%@", fullName);
        
        [[studentDictionary objectForKey:fullName] greeting];
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
