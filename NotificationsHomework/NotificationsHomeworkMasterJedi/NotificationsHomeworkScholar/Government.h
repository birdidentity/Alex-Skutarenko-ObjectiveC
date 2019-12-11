//
//  Government.h
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

#pragma mark - NOTIFICATIONS

extern NSString *const GovernmentTaxLevelDidChangeNotification;
extern NSString *const GovernmentSalaryDidChangeNotification;
extern NSString *const GovernmentPensionDidChangeNotification;
extern NSString *const GovernmentAveragePriceDidChangeNotification;
extern NSString *const GovernmentInflationDidChangeNotification;

#pragma mark - KEYS

extern NSString *const GovernmentTaxLevelKey;
extern NSString *const GovernmentSalaryKey;
extern NSString *const GovernmentPensionKey;
extern NSString *const GovernmentAveragePriceKey;
extern NSString *const GovernmentInflationKey;

@interface Government : NSObject

@property (assign, nonatomic) CGFloat taxLevel;
@property (assign, nonatomic) CGFloat salary;
@property (assign, nonatomic) CGFloat pension;
@property (assign, nonatomic) CGFloat averagePrice;
@property (assign, nonatomic) CGFloat inflation;

@end

NS_ASSUME_NONNULL_END
