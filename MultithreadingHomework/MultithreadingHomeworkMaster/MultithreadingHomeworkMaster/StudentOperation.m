//
//  StudentOperation.m
//  MultithreadingHomeworkMaster
//
//  Created by Vladislav Boyko on 12/13/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "StudentOperation.h"

@implementation StudentOperation

+(NSOperationQueue *) queue {
    static NSOperationQueue *queue = nil;
    if(!queue) {
        queue = [NSOperationQueue new];
        return queue;
    }
    NSLog(@"%@", queue.name);
    return queue;
}

-(void) guessAnswer: (NSInteger) number inRange:(NSRange) range {
    NSOperation *operation = [NSOperation new];
    
    __weak StudentOperation *student = self;
    
    [operation setCompletionBlock:^{
        NSInteger generateNumber = range.location + arc4random() % (range.location + range.length + 1);
        
            double startTime = CACurrentMediaTime();
        
            NSLog(@"%@ started solving!", student.name);
        
            while (number != generateNumber) {
                generateNumber = generateNumber = range.location + arc4random() % (range.location + range.length + 1);
            };
            
            NSLog(@"\n\n%@ student found the answer - %ld", student.name, generateNumber);
            NSLog(@"\n %@ spend %f time to solve this task", student.name, CACurrentMediaTime() - startTime);
    }];
    
    [[StudentOperation queue] addOperation:operation];
}

-(instancetype) initWithName:(NSString *) name {
    self = [super init];
    if (self) {
        _name = name;
    }
    return self;
}

@end
