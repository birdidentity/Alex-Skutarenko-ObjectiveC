//
//  Human.m
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Human.h"

@implementation Human

-(void) movement {
    NSLog(@"%@ walking around", self.name);
}

- (instancetype) init: (NSString*) name withWeight: (CGFloat) weight withHeight: (CGFloat) height withGender: (NSString*) gender {
    self = [super init];
    if (self) {
        self.name = name;
        self.gender = gender;
        self.height = height;
        self.weight = weight;
    }
    return self;
}


@end
