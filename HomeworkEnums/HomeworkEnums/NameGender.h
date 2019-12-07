//
//  NameGender.h
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface NameGender : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) Gender gender;

-(instancetype) initWithData: (NSString*) name gender: (Gender) gender;

@end

NS_ASSUME_NONNULL_END
