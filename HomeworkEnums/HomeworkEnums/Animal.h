//
//  Animal.h
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    Cat,
    Dog,
    Lizzard,
    Snake,
} Pet;

@interface Animal : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) Pet type;
@property (assign, nonatomic) NSUInteger lifeSpan;

-(instancetype) initWithData: (NSString*) name
                         age: (NSInteger) age
                        type: (Pet) type;

@end

NS_ASSUME_NONNULL_END
