//
//  StudentOperation.h
//  MultithreadingHomeworkMaster
//
//  Created by Vladislav Boyko on 12/13/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN



@interface StudentOperation : NSObject

@property (strong, nonatomic) NSString *name;

-(instancetype) initWithName:(NSString *) name;

@end

NS_ASSUME_NONNULL_END
