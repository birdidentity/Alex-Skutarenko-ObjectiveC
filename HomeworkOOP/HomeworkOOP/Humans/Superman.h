//
//  Superman.h
//  HomeworkOOP
//
//  Created by Vladislav Boyko on 12/4/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Human.h"

NS_ASSUME_NONNULL_BEGIN

@interface Superman : Human
@property (assign, nonatomic) NSInteger power;
@property (assign, nonatomic) CGFloat speed;

- (instancetype) init: (NSInteger) power speed:(CGFloat) speed;
@end

NS_ASSUME_NONNULL_END
