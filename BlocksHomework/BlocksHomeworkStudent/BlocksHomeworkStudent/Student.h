//
//  Student.h
//  BlocksHomeworkStudent
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *lastName;

-(instancetype) initWithName:(NSString *) name lastName:(NSString *) lastName;

@end

NS_ASSUME_NONNULL_END
