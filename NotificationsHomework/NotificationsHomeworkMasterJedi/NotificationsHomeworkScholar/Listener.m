//
//  Listener.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/11/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Listener.h"

@implementation Listener

-(void) applicationWillTerminate: (NSNotification *) notification {
    NSLog(@"\n\nListener: will terminate");
}

-(void) applicationWillResignActive: (NSNotification *) notification {
    NSLog(@"\n\nListener: will resign active");
}

-(void) applicationWillEnterForeground: (NSNotification *) notification {
    NSLog(@"\n\nListener: will enter foreground");
}

-(void) applicationDidBecomeActive: (NSNotification *) notification {
    NSLog(@"\n\nListener: did become active");
}

-(void) applicationDidEnterBackground: (NSNotification *) notification {
    NSLog(@"\n\nListener: did enter background");
}

-(void) applicationDidFinishLaunching: (NSNotification *) notification {
    NSLog(@"\n\nListener: did finish launching");
}


-(instancetype) init {
    self = [super init];
    
    if (self) {
        
        [[NSNotificationCenter defaultCenter] addObserver: self
                                                 selector:@selector(applicationWillTerminate:)
                                                     name:UIApplicationWillTerminateNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillResignActive:)
                                                     name:UIApplicationWillResignActiveNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillEnterForeground:)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidBecomeActive:)
                                                     name:UIApplicationDidBecomeActiveNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidFinishLaunching:)
                                                     name:UIApplicationDidFinishLaunchingNotification
                                                   object:nil];
    }
    
    return self;
}

-(void) dealloc {
    NSLog(@"Listener killed");
}

@end
