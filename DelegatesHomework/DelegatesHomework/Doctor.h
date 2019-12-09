//
//  Doctor.h
//  DelegatesHomework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Patient.h"

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject <PatientDelegate>

@property (assign, nonatomic) NSInteger headCondition;
@property (assign, nonatomic) NSInteger legsCondition;
@property (assign, nonatomic) NSInteger backCondition;

@end

NS_ASSUME_NONNULL_END
