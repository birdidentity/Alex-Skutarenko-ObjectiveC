//
//  Doctor.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Doctor.h"
#import "Government.h"

@implementation Doctor

#pragma mark - selectors for observers

-(void) governmentSalaryNotification:(NSNotification *) notification {
    CGFloat newSalary = [[notification.userInfo objectForKey: GovernmentSalaryKey] floatValue];
    
    if (_salary < newSalary) {
        NSLog(@"\n\n%@ surpirsed! Government rised salary by %.1f dollars.\n\n", _name, (newSalary - _salary));
    } else if (_salary > newSalary) {
        NSLog(@"\n\n%@ become angry! Government decreased salary by %.1f dollars.\n\n", _name, (_salary - newSalary));
    } else {
        return;
    }
    
    _salary = newSalary;
}

-(void) governmentAveragePriceNotification:(NSNotification *) notification {
    CGFloat newAveragePrice = [[notification.userInfo objectForKey: GovernmentAveragePriceKey] floatValue];
    
    if (_averagePrice > newAveragePrice) {
        NSLog(@"\n\n%@ extremely happy! Government decreased average price by - %.1f dollars.\n\n", _name, (_averagePrice - newAveragePrice));
    } else if (_averagePrice < newAveragePrice) {
        NSLog(@"\n\n%@ going angry! Government rised average price by - %.1f dollars.\n\n", _name, (newAveragePrice - _averagePrice));
    } else {
        return;
    }
    
    _averagePrice = newAveragePrice;
}

-(void) governmentTaxLevelNotification:(NSNotification *) notification {
    CGFloat newTaxLevel = [[notification.userInfo objectForKey:GovernmentTaxLevelKey] floatValue];
    
    if (_taxLevel > newTaxLevel) {
        NSLog(@"\n\n%@ pleasantly surprised. Government decreased tax level by - %.1f %%.\n\n", _name, (_taxLevel - newTaxLevel));
    } else if (_taxLevel < newTaxLevel) {
        NSLog(@"\n\n%@ is furious!!! Government rised tax level - by - %.1f %%.\n\n", _name, (newTaxLevel - _taxLevel));
    } else {
        return;
    }
    
    _taxLevel = newTaxLevel;
}

#pragma mark - initializer override

-(instancetype)init {
    self = [super init];
    if (self) {
        _salary = 1000;
        _taxLevel = 5.5f;
        _averagePrice = 15.1f;
        
        //salary change subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentSalaryNotification:)
                                                     name:GovernmentSalaryDidChangeNotification
                                                   object:nil];
        
        //average price change subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentAveragePriceNotification:)
                                                     name:GovernmentAveragePriceDidChangeNotification
                                                   object:nil];
        
        //tax level change subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentTaxLevelNotification:)
                                                     name:GovernmentTaxLevelDidChangeNotification
                                                   object:nil];
    }
    
    return self;
}

#pragma mark - dealloc override

-(void) dealloc {
    NSLog(@"\n\n%@ unsubscribed from all notifications for vocation time.\n\n", _name);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
