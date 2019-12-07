//
//  AppDelegate.m
//  StructsHomework
//
//  Created by Vladislav Boyko on 12/7/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    CGRect field = CGRectMake(2, 10, 10, 10);
    CGRect target = CGRectMake(field.origin.x + 3, field.origin.y + 3, 4, 4);

    NSArray* randPointers = [NSArray arrayWithObjects:
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)],
                             [NSValue valueWithCGPoint:CGPointMake(arc4random_uniform(10) + 2, arc4random_uniform(10) + 10)], nil];

    for (NSValue *item in randPointers) {
        CGPoint point = [item CGPointValue];
        if (CGRectContainsPoint(field, point)) {
            NSLog(@"field contains this point");
            if (CGRectContainsPoint(target, point)) {
                NSLog(@"target contains this point");
            }
        } else {
            NSLog(@"point is out of range");
            NSLog(@"X: %f, Y: %f", [item CGPointValue].x, [item CGPointValue].y);
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
