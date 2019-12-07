//
//  Human.m
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Human.h"

@implementation Human

-(NSString*)getGender {
    
    NSString* result;
    
    switch (self.gender) {
        case GenderFemale:
            result = @"I'm a strong and independent woman";
            break;
        case GenderMale:
            result = @"I'm a satisfied with life man!";
            break;
    }
    return result;
}

-(instancetype) initWithData: (NSString*) name
                         age: (NSInteger) age
                      gender: (Gender) gender
                   skinColor: (SkinColor) skinColor
                         pet: (Animal*) pet {
    self = [super init];
    if (self) {
        self.name = name;
        self.age = age;
        self.gender = gender;
        self.skinColor = skinColor;
        self.pet = pet;
    }
    return self;
}

@end
