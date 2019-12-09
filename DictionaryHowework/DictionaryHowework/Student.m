//
//  Student.m
//  DictionaryHowework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Student.h"

@implementation Student

- (void) greeting {
    NSLog(@"%@ saying hello!", _name);
}

- (instancetype)initWithName: (NSString *) name lastName: (NSString *) lastName;
{
    self = [super init];
    if (self) {
        _name = name;
        _lastName = lastName;
    }
    return self;
}

@end
