//
//  Businessman.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Businessman.h"
#import "Government.h"

@implementation Businessman

#pragma mark - selectors for observers

//update according tax level
-(void) governmentTaxLevelNotification:(NSNotification *) notification {
    CGFloat newTaxLevel = [[notification.userInfo objectForKey: GovernmentTaxLevelKey] floatValue];
    
    if (_taxLevel > newTaxLevel) {
        NSLog(@"\n\nBusinessman %@ extremely happy with new tax!!! Tax level drecreased by - %.1f %%.", _name, (_taxLevel - newTaxLevel));
    } else if (_taxLevel < newTaxLevel) {
        NSLog(@"\n\nBusinessman %@ frustrated... New tax level increased by - %.1f %%.", _name, (newTaxLevel - _taxLevel));
    } else {
        return;
    }
    
    _taxLevel = newTaxLevel;
}

//update according to average price
-(void) governmentAveragePriceNotification:(NSNotification *) notification {
    CGFloat newAveragePrice = [[notification.userInfo objectForKey: GovernmentAveragePriceKey] floatValue];
    
    if (_averagePrice > newAveragePrice) {
        NSLog(@"\n\nBusinessman %@ extremely happy with new average price! It was decreased by - %.1f dollars. Now he can save some money!", _name, (_averagePrice - newAveragePrice));
    } else if (_averagePrice < newAveragePrice) {
        NSLog(@"\n\nBusinessmans got fight with government. Government rised average price by - %.1f dollars.", (newAveragePrice - _averagePrice));
    } else {
        return;
    }
    
    _averagePrice = newAveragePrice;
}

//inflation did change update
-(void)governmentInflationNotification:(NSNotification *) notification {
    CGFloat newInflation = [[notification.userInfo objectForKey: GovernmentInflationKey] floatValue];
    
    if (newInflation > 0) {
        NSLog(@"\n\n%@: Oh no!!!My business is going ot crash this way...\nInflation increased by - (%.1f %%)", _name, newInflation);
    } else if (newInflation < 0) {
        NSLog(@"\n\n%@: Wow, nice! :) My business is rising, this new prices getting lower.\nInflation decreased by - (%.1f %%)", _name, newInflation);
    } else {
        return;
    }
    
    _inflation = newInflation;
}

//application did enter background update
-(void) applicationDidEnterBackground: (NSNotification *) notification {
    NSLog(@"\n\n%@: One more good day has passed, it's time to sleep.", _name);
}

//application will enter foreground update
-(void) applicationWillEnterForeground: (NSNotification *) notification {
    NSLog(@"\n\n%@: Wow, it's morning already, i have to go to build my business", _name);
}

#pragma mark - initializer override

-(instancetype)init {
    self = [super init];
    if (self) {
        _taxLevel = 5.5f;
        _averagePrice = 15.f;
        _inflation = 0;
        
        //tax level change subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentTaxLevelNotification:)
                                                     name:GovernmentTaxLevelDidChangeNotification
                                                   object: nil];
        
        //average price change subscription
        [[NSNotificationCenter defaultCenter] addObserver: self
                                                 selector:@selector(governmentAveragePriceNotification:)
                                                     name:GovernmentAveragePriceDidChangeNotification
                                                   object: nil];
        
        //inflation change subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentInflationNotification:)
                                                     name:GovernmentInflationDidChangeNotification
                                                   object:nil];
        
        //application will enter background subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationDidEnterBackground:)
                                                     name:UIApplicationDidEnterBackgroundNotification
                                                   object:nil];
        
        //application will enter foreground subscription
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(applicationWillEnterForeground:)
                                                     name:UIApplicationWillEnterForegroundNotification
                                                   object:nil];
    }
    
    return self;
}

#pragma mark - dealloc override

- (void) dealloc {
    NSLog(@"\n\n%@ unsubscribed from all notifications for vocation time.", _name);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
