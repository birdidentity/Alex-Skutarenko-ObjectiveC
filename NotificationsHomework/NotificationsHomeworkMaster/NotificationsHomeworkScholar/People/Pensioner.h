//
//  Pensioner.h
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Pensioner : NSObject

@property (strong, nonatomic) NSString *name;

@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;

@end

NS_ASSUME_NONNULL_END
