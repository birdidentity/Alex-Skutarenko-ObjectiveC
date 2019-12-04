//
//  Animal.m
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Animal.h"

@implementation Animal


-(void) movement {
    NSLog(@"I'm a %@ and I prefer to move like a %@", self.name, self.type);
}

-(instancetype) init: (NSString*) name type:(NSString*) type lifeSpan: (NSInteger) lifeSpan {
    self = [super init];
    
    if (self) {
        self.name = name;
        self.type = type;
        self.lifeSpan = lifeSpan;
    }
    
    return self;
}

@end
