//
//  Human.h
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Human : NSObject

@property (strong, nonatomic) NSString* name;
@property (assign, nonatomic) CGFloat height;
@property (assign, nonatomic) CGFloat weight;
@property (assign, nonatomic) NSString* gender;

-(void) movement;

- (instancetype) init: (NSString*) name withWeight: (CGFloat) weight withHeight: (CGFloat) height withGender: (NSString*) gender;

@end

NS_ASSUME_NONNULL_END
