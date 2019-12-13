//
//  Student.h
//  MultithreadingHomeworkStudent
//
//  Created by Vladislav Boyko on 12/13/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class Student;

typedef void (^AsyncCounting)(void);

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;

-(void) guessAnswer:(NSInteger) number inRange:(NSRange) range;
-(instancetype) initWithName: (NSString *) name;

@end

NS_ASSUME_NONNULL_END
