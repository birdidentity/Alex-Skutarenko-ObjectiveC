//
//  Human.h
//  HomeworkEnums
//
//  Created by Vladislav Boyko on 12/5/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

typedef enum {
    GenderMale,
    GenderFemale
} Gender;

typedef enum {
    White,
    Yellow,
    Black
} SkinColor;

@class Animal;
@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger age;
@property (assign, nonatomic) Gender gender;
@property (assign, nonatomic) SkinColor skinColor;
@property (strong, nonatomic) Animal* pet;

-(NSString*) getGender;

-(instancetype) initWithData: (NSString*) name
                         age: (NSInteger) age
                      gender: (Gender) gender
                   skinColor: (SkinColor) skinColor
                         pet: (Animal*) pet;

@end

NS_ASSUME_NONNULL_END
