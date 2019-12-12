//
//  AppDelegate.m
//  BlocksHomeworkScholar
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
#pragma mark - creating block without parameters
    __block NSInteger counter = 0;
    
    void (^firstBlock)(void) = ^{
        NSLog(@"first block calls - %ld", ++counter);
    };
    
    for (int i = 0; i <= 10; i++) {
        firstBlock();
    }
    
#pragma mark - creating block with parameters
    
    NSString *(^secondBlock)(NSString *string, NSInteger integer) = ^(NSString *string, NSInteger integer){
        return [NSString stringWithFormat: @"%@ with value - %ld", string, integer];
    };
    
    NSLog(@"%@", secondBlock(@"Testing second block", 26));
    
    [self doBlockCall:secondBlock];
    
    return YES;
}

#pragma mark - method for block parameters

-(void) doBlockCall:(NSString *(^)(NSString *, NSInteger)) block {
    NSLog(@"%@", block(@"25", 4));
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
