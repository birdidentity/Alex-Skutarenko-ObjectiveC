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

//update according to salary
-(void) governmentSalaryNotification:(NSNotification *) notification {
    CGFloat newSalary = [[notification.userInfo objectForKey: GovernmentSalaryKey] floatValue];
    
    if (_salary < newSalary) {
        NSLog(@"\n\n%@ surpirsed! Government rised salary by %.1f dollars.", _name, (newSalary - _salary));
    } else if (_salary > newSalary) {
        NSLog(@"\n\n%@ become angry! Government decreased salary by %.1f dollars.", _name, (_salary - newSalary));
    } else {
        return;
    }
    
    _salary = newSalary;
}

//update according to average price
-(void) governmentAveragePriceNotification:(NSNotification *) notification {
    CGFloat newAveragePrice = [[notification.userInfo objectForKey: GovernmentAveragePriceKey] floatValue];
    
    if (_averagePrice > newAveragePrice) {
        NSLog(@"\n\n%@ extremely happy! Government decreased average price by - %.1f dollars.", _name, (_averagePrice - newAveragePrice));
    } else if (_averagePrice < newAveragePrice) {
        NSLog(@"\n\n%@ going angry! Government rised average price by - %.1f dollars.", _name, (newAveragePrice - _averagePrice));
    } else {
        return;
    }
    
    _averagePrice = newAveragePrice;
}


//update according to tax level
-(void) governmentTaxLevelNotification:(NSNotification *) notification {
    CGFloat newTaxLevel = [[notification.userInfo objectForKey:GovernmentTaxLevelKey] floatValue];
    
    if (_taxLevel > newTaxLevel) {
        NSLog(@"\n\n%@ pleasantly surprised. Government decreased tax level by - %.1f %%.", _name, (_taxLevel - newTaxLevel));
        
    } else if (_taxLevel < newTaxLevel) {
        NSLog(@"\n\n%@ is furious!!! Government rised tax level - by - %.1f %%.", _name, (newTaxLevel - _taxLevel));
        
    } else {
        return;
    }
    
    _taxLevel = newTaxLevel;
}

//update according to inflation
-(void) governmentInflationNotification:(NSNotification *) notification {
    CGFloat newInflationLevel = [[notification.userInfo objectForKey:GovernmentInflationKey] floatValue];
    
    if (newInflationLevel < 0) {
        NSLog(@"\n\nPrices getting lower!\nCurrent inflation is - (%.1f %%)\nSeems like %@ can save some money this month.", newInflationLevel, _name);
        
    } else if (newInflationLevel > 0) {
        NSLog(@"\n\nPrices getting higher!\nCurrent inflation is - (%.1f %%)\nSeems like %@ it's time to count money more carefully...", newInflationLevel, _name);
    } else {
        return;
    }

    _inflation = newInflationLevel;
}

-(void) applicationDidEnterBackground: (NSNotification *) notification {
    NSLog(@"\n\n%@: Wow, so late already, I think it's time to rest a bit...", _name);
}

-(void) applicationWillEnterForeground: (NSNotification *) notification {
    NSLog(@"\n\n%@: It was such a great night! Goodmorning World!", _name);
}

#pragma mark - initializer override

-(instancetype)init {
    self = [super init];
    if (self) {
        _salary = 1000;
        _taxLevel = 5.5f;
        _averagePrice = 15.1f;
        _inflation = 0;
        
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
        
        //inflation change subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentInflationNotification:)
                                                     name:GovernmentInflationDidChangeNotification
                                                   object:nil];
        
        //did enter background subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        //will enter foreground subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillEnterForeground:)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];
    }
    
    return self;
}

#pragma mark - dealloc override

-(void) dealloc {
    NSLog(@"\n\n%@ unsubscribed from all notifications for vocation time.", _name);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
