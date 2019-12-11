//
//  Doctor.h
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Doctor : NSObject

@property (strong, nonatomic) NSString *name;

@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) int inflation;


@end

NS_ASSUME_NONNULL_END
