//
//  Government.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Government.h"

#pragma mark - NOTIFICATIONS

NSString *const GovernmentTaxLevelDidChangeNotification = @"GovernmentTaxLevelDidChangeNotification";
NSString *const GovernmentSalaryDidChangeNotification = @"GovernmentSalaryDidChangeNotification";
NSString *const GovernmentPensionDidChangeNotification = @"GovernmentPensionDidChangeNotification";
NSString *const GovernmentAveragePriceDidChangeNotification = @"GovernmentAveragePriceDidChangeNotification";
NSString *const GovernmentInflationDidChangeNotification = @"GovernmentInflationDidChangeNotification";

#pragma mark - KEYSMM

NSString *const GovernmentTaxLevelKey = @"GovernmentTaxLevelKey";
NSString *const GovernmentSalaryKey = @"GovernmentSalaryKey";
NSString *const GovernmentPensionKey = @"GovernmentPensionKey";
NSString *const GovernmentAveragePriceKey = @"GovernmentAveragePriceKey";
NSString *const GovernmentInflationKey = @"GovernmentInflationKey";

@implementation Government

#pragma mark - setters override

-(void) setTaxLevel:(CGFloat)taxLevel {
    _taxLevel = taxLevel;
    
    //putting tax level to notification center
    [self setNotificationName:GovernmentTaxLevelDidChangeNotification
                          key:GovernmentTaxLevelKey
                        value:taxLevel];
}
//-------
-(void) setSalary:(CGFloat)salary {
    _salary = salary;
    
    //putting salary to notification center
    [self setNotificationName:GovernmentSalaryDidChangeNotification
                          key:GovernmentSalaryKey
                        value:salary];
}
//-------
-(void) setPension:(CGFloat)pension {
    _pension = pension;
    
    //putting pension to notification center
    [self setNotificationName:GovernmentPensionDidChangeNotification
                          key:GovernmentPensionKey
                        value:pension];
}
//-------
-(void) setAveragePrice:(CGFloat)averagePrice {
    //setting inflation from averagePrice because this argument should be counted automatically depends on averagePrice
    if (_averagePrice != averagePrice) {
        self.inflation = (averagePrice - _averagePrice) / _averagePrice;
    } else {
        return;
    }
    
    _averagePrice = averagePrice;
    
    //putting average price to notification center
    [self setNotificationName:GovernmentAveragePriceDidChangeNotification
                          key:GovernmentAveragePriceKey
                        value:averagePrice];
    
}
//-------
-(void) setInflation:(CGFloat)inflation {
    _inflation = inflation;
    
    //putting inflation tp notification center
    [self setNotificationName:GovernmentInflationDidChangeNotification
                          key:GovernmentInflationKey
                        value:(inflation * 100)];
}


#pragma mark - to avoid copy paste
-(void) setNotificationName:(NSString *) notification key:(NSString *) key value:(CGFloat)value {
    NSDictionary *dictionary = [NSDictionary dictionaryWithObject:@(value)
                                                           forKey:key];
    
    //sending notification to all subscribers
    [[NSNotificationCenter defaultCenter] postNotificationName:notification
                                                        object:nil
                                                      userInfo:dictionary];
}

#pragma mark - initializer override

-(instancetype) init {
    self = [super init];
    if (self) {
        _taxLevel = 3 + (arc4random() % 100) / 10;
        _salary = 500 + arc4random() % 1000;
        _pension = 300 + arc4random() % 500;
        _averagePrice = 5 + arc4random() % 20;
        _inflation = 0;
    }
    
    return self;
}

@end
