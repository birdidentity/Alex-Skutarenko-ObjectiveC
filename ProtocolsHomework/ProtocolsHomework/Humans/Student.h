//
//  Human.h
//  ProtocolsHomework
//
//  Created by Vladislav Boyko on 12/8/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Jumper.h"
#import "Runner.h"

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    Male,
    Female
} Gender;

@interface Student : NSObject <Jumper, Runner>

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) Gender gender;

@end

NS_ASSUME_NONNULL_END
