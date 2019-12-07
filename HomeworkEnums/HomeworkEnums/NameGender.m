//
//  NameGender.m
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "NameGender.h"
#import "Human.h"

@implementation NameGender

-(instancetype) initWithData: (NSString*) name gender: (Gender) gender {
    self = [super init];
    if (self) {
        self.name = name;
        self.gender = gender;
    }
    return self;
}

@end
