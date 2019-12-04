//
//  Human.h
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) NSInteger height;
@property (assign, nonatomic) NSInteger weight;
@property (assign, nonatomic) NSString* gender;

-(void) movement;

@end

NS_ASSUME_NONNULL_END
