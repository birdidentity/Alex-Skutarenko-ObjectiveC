//
//  AppDelegate.m
//  DelegatesHomework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"
#import "Patient.h"
#import "Doctor.h"
#import "WorstDoctor.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    Doctor *goodDoctor = [Doctor new];
    WorstDoctor * worstDoctor = [WorstDoctor new];
    
    
    Patient *patientSteve = [[Patient alloc] initWithName:@"Steve"
                                              temperature:41.1f
                                           delegateObject:worstDoctor];
    patientSteve.backState = 40;
    patientSteve.headState = 80;
    patientSteve.legsState = 70;
    
    Patient *patientColin = [[Patient alloc] initWithName:@"Colin"
                                              temperature:41.1f
                                           delegateObject:worstDoctor];
    patientColin.backState = 10;
    patientColin.headState = 30;
    patientColin.legsState = 66;
    
    Patient *patientSara = [[Patient alloc] initWithName:@"Sara"
                                              temperature:41.1f
                                           delegateObject:goodDoctor];
    patientSara.backState = 70;
    patientSara.headState = 10;
    patientSara.legsState = 100;
    
    Patient *patientFlint = [[Patient alloc] initWithName:@"Flint"
                                              temperature:41.1f
                                           delegateObject:goodDoctor];
    patientFlint.backState = 80;
    patientFlint.headState = 80;
    patientFlint.legsState = 70;
    
    Patient *patientSam = [[Patient alloc] initWithName:@"Sam"
                                              temperature:41.1f
                                           delegateObject:worstDoctor];
    patientSam.backState = 40;
    patientSam.headState = 80;
    patientSam.legsState = 10;
    
    Patient *patientMark = [[Patient alloc] initWithName:@"Mark"
                                              temperature:41.1f
                                           delegateObject:goodDoctor];
    patientMark.backState = 15;
    patientMark.headState = 24;
    patientMark.legsState = 30;
    
    NSArray *patients = [NSArray arrayWithObjects:
                         patientSam,
                         patientMark,
                         patientSara,
                         patientColin,
                         patientFlint,
                         patientSteve,
                         nil];
    
    for (Patient *patient in patients) {
        BOOL lackOfSick = arc4random() % 2;
    
        [patient isOkay];
        
        if (lackOfSick) {
            [patient gotSick];
            [patient isOkay];

        }
    }
    
    [patientMark.delegate patientFullbodyInspect:patientMark];
    NSLog(@"All patients are okay!");
    
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
