//
//  Animal.h
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Animal : NSObject

@property (strong, nonatomic) NSString* type;
@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger lifeSpan;

-(void) movement;

-(instancetype) init: (NSString*) name type:(NSString*) type lifeSpan: (NSInteger) lifeSpan;

@end

NS_ASSUME_NONNULL_END
