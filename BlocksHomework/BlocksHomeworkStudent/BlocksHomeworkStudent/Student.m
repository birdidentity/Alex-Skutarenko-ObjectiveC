//
//  Student.m
//  BlocksHomeworkStudent
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Student.h"

@implementation Student

#pragma mark - new init method

-(instancetype) initWithName:(NSString *) name lastName:(NSString *) lastName {
    self = [super init];
    if (self) {
        _name = name;
        _lastName = lastName;
    }
    
    return self;
}

@end
