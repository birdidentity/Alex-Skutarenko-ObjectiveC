//
//  Superman.m
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Superman.h"

@implementation Superman

- (instancetype) init: (NSInteger) power speed:(CGFloat) speed {
    self = [super init:@"Superman" withWeight:1.0f withHeight:1.88f withGender:@"male"];
    if (self) {
        self.power = power;
        self.speed = speed;
    }
    
    return self;
}

- (void) movement {
    [super movement];
    NSLog(@"%@ started to fly", self.name);
}

@end
