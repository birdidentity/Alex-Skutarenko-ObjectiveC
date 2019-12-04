//
//  AppDelegate.m
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Cyclist.h"
#import "Runner.h"
#import "Swimmer.h"
#import "Superman.h"
#import "Animals/Animal.h"
#import "Animals/ColdBlooded.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Human* peter = [[Human alloc] init:@"Peter" withWeight:84.4f withHeight:1.84f withGender:@"male"];
    Cyclist* jessy = [[Cyclist alloc] init:@"Jessy" withWeight:76.0f withHeight:1.79f withGender:@"male"];
    Runner* colin = [[Runner alloc] init:@"Colin" withWeight:80.1f withHeight:1.90f withGender:@"male"];
    Swimmer* nicholas = [[Swimmer alloc] init:@"Nicholas" withWeight:74.f withHeight:1.88f withGender:@"male"];
    Superman* superman = [[Superman alloc] init:100 speed:200.2f];
    
    Animal* dog = [[Animal alloc] init:@"puppy" type:@"Dog" lifeSpan:14];
    ColdBlooded* lizzard = [[ColdBlooded alloc] init:@"Lizzy" type:@"Lizzard" lifeSpan:3];
    
    
    NSArray* people = [NSArray arrayWithObjects:peter, jessy, colin, nicholas, superman, dog, lizzard, nil];
    
    /* for (Human* person in people) {
        NSLog(@"My name is %@, my weight is %f, my height is %f, my gender is %@", person.name, person.weight, person.height, person.gender);
        [person movement];
    }
    
    for (long i = people.count - 1; i >= 0; i--) {
        if ([people[i] isKindOfClass:[Superman class]]) {
            Superman* superman = (Superman*)people[i];
            NSLog(@"I'm %@, my power is %ld, my speed is %f", superman.name, superman.power, superman.speed);
        } else {
            NSLog(@"I'm just a regular human");
        }
    } */
    
    for (NSObject* being in people) {
        if ([being isKindOfClass:[Human class]]) {
            NSLog(@"This is human with name %@", [(Human*)being name]);
        }
        if ([being isKindOfClass:[Animal class]]) {
            NSLog(@"This is animal with name %@", [(Animal*)being name]);
        }
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
