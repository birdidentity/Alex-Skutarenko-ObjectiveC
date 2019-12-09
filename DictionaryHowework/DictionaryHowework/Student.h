//
//  Student.h
//  DictionaryHowework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface Student : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *lastName;

- (void) greeting;

- (instancetype)initWithName: (NSString *) name lastName: (NSString *) lastName;

@end

NS_ASSUME_NONNULL_END
