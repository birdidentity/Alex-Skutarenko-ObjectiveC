//
//  AppDelegate.m
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Human.h"
#import "Animal.h"
#import "NameGender.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - array of ages for random generation
    
    NSMutableArray* someAges = [NSMutableArray arrayWithObjects:[NSNumber numberWithUnsignedInteger:17],
                                                                [NSNumber numberWithUnsignedInteger:19],
                                                                [NSNumber numberWithUnsignedInteger:21],
                                                                [NSNumber numberWithUnsignedInteger:23],
                                                                [NSNumber numberWithUnsignedInteger:24],
                                                                [NSNumber numberWithUnsignedInteger:26],
                                                                [NSNumber numberWithUnsignedInteger:28],
                                                                [NSNumber numberWithUnsignedInteger:30],
                                                                [NSNumber numberWithUnsignedInteger:32],
                                                                [NSNumber numberWithUnsignedInteger:34], nil];
    
#pragma mark - array of names and gender for random generation
    
    NSMutableArray* nameGender = [NSMutableArray
                                  arrayWithObjects:[[NameGender alloc] initWithData:@"Peter" gender:GenderMale],
                                                   [[NameGender alloc] initWithData:@"Sara" gender:GenderFemale],
                                                   [[NameGender alloc] initWithData:@"John" gender:GenderMale],
                                                   [[NameGender alloc] initWithData:@"Jessy" gender:GenderMale],
                                                   [[NameGender alloc] initWithData:@"Cortney" gender:GenderFemale],
                                                   [[NameGender alloc] initWithData:@"Anna" gender:GenderFemale],
                                                   [[NameGender alloc] initWithData:@"Nicholas" gender:GenderMale],
                                                   [[NameGender alloc] initWithData:@"Philip" gender:GenderMale],
                                                   [[NameGender alloc] initWithData:@"Andrew" gender:GenderMale],
                                                   [[NameGender alloc] initWithData:@"Greta" gender:GenderFemale],nil];
    
#pragma mark - array of pets for random generation
    
    NSMutableArray* petsArray = [NSMutableArray arrayWithObjects:
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)],
                                 [[Animal alloc] initWithData:@"Markus" age:2 type:arc4random_uniform(4)], nil];
    
    NSMutableArray* people = [[NSMutableArray alloc] init];
    
    for (int i = 0; i < 10; i++) {
        
        Human* person = [[Human alloc] init];
        NSUInteger randNum = arc4random_uniform(someAges.count);
        
        person.age = [[someAges objectAtIndex:randNum] integerValue];
        [someAges removeObjectAtIndex:randNum];
        
        randNum = arc4random_uniform(nameGender.count);
        
        person.name = [[nameGender objectAtIndex:randNum] name];
        person.gender = [[nameGender objectAtIndex:randNum] gender];
        [nameGender removeObjectAtIndex:randNum];
        
        randNum = arc4random_uniform(petsArray.count);
        
        person.pet = [petsArray objectAtIndex:randNum];
        [petsArray removeObjectAtIndex:randNum];
        
        [people addObject:person];
    }
    
//    for (Human* person in people) {
//        NSLog(@"%@", [person getGender]);
//    }
    
    NSSortDescriptor *sortDesc = [[NSSortDescriptor alloc] initWithKey:@"gender" ascending:YES];
    NSSortDescriptor *ageDesc = [[NSSortDescriptor alloc] initWithKey:@"age" ascending:NO];
    
    people = [people sortedArrayUsingDescriptors:@[sortDesc, ageDesc]];
    
    for (Human* person in people) {
        NSLog(@"%@ - %@ - %d", [person getGender], person.name, person.age);
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
