//
//  Student.m
//  MultithreadingHomeworkScholar
//
//  Created by Vladislav Boyko on 12/13/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Student.h"

@implementation Student

-(void) guessAnswer:(NSInteger) number inRange:(NSRange) range {
    __block NSInteger generateNumber = range.location + arc4random() % (range.location + range.length + 1);
    __weak Student *student = self;
    
    //creating que and making async answer finding
    dispatch_queue_t queue = dispatch_queue_create("com.buckweat.myqueue", DISPATCH_QUEUE_SERIAL);
    dispatch_async(queue, ^{
        double startTime = CACurrentMediaTime();
        NSLog(@"%@ started solving!", student.name);
        while (number != generateNumber) {
            generateNumber = generateNumber = range.location + arc4random() % (range.location + range.length + 1);
        };
        
        NSLog(@"\n\n%@ student found the answer - %ld", student.name, generateNumber);
        NSLog(@"\n %@ spend %f time to solve this task", student.name, CACurrentMediaTime() - startTime);
    });
    
}

#pragma mark - custom initializer

-(instancetype) initWithName: (NSString *) name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

#pragma mark - dealloc override

-(void) dealloc {
    NSLog(@"\n\n student %@ finished university", _name);
}

@end
