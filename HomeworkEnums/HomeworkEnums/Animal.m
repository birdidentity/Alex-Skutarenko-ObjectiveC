//
//  Animal.m
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Animal.h"

@implementation Animal

-(void) detectLifeSpan {
    switch (_type) {
        case Cat:
            _lifeSpan = 15;
            break;
        case Dog:
            _lifeSpan = 13;
            break;
        case Lizzard:
            _lifeSpan = 10;
            break;
        case Snake:
            _lifeSpan = 9;
            break;
        default:
           break;
    }
}


-(instancetype) initWithData: (NSString*) name
                         age: (NSInteger) age
                        type: (Pet) type {
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.type = type;
        [self detectLifeSpan];
    }
    return self;
}

@end
