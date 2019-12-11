//
//  Pensioner.m
//  NotificationsHomeworkScholar
//
//  Created by Vladislav Boyko on 12/10/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Pensioner.h"
#import "Government.h"

@implementation Pensioner

#pragma mark - observers implementation

//update according to pension
-(void) governmentPensionNotification:(NSNotification *) notification {
    CGFloat newPension = [[notification.userInfo objectForKey:GovernmentPensionKey] floatValue];
    
    if (_pension < newPension) {
        NSLog(@"\n\nPensioner %@ is so grateful to the government! They rised increased his pension by - %.1f dollars.", _name, (newPension - _pension));
    } else if (_pension > newPension) {
        NSLog(@"\n\nPensioner %@ is crying...Government lowered his pension by - %.1f dollars\nNow he have no money to buy food...", _name, (_pension - newPension));
    } else {
        return;
    }
    
    _pension = newPension;
}

//update according to average price
-(void) governmentAveragePriceNotification:(NSNotification *) notification {
    CGFloat newAveragePrice = [[notification.userInfo objectForKey: GovernmentAveragePriceKey] floatValue];
    
    if (_averagePrice > newAveragePrice) {
        NSLog(@"\n\nPensioner %@ jumping with happiness !-!-! Government decreased average price by - %.1f dollars", _name, (_averagePrice - newAveragePrice));
    } else if (_averagePrice < newAveragePrice) {
        NSLog(@"\n\nPensioner %@ wants to jum from the roof...Government increased average price by - %.1f dollars", _name, (newAveragePrice - _averagePrice));
    } else {
        return;
    }
    
    _averagePrice = newAveragePrice;
}

//update according to inflation
-(void) governmentInflationNotification: (NSNotification *) notification {
    CGFloat newInflation = [[notification.userInfo objectForKey:GovernmentInflationKey] floatValue];
    
    if (newInflation < 0) {
        NSLog(@"\n%@: Thanks to the government our prices getting lower!\nInflation - (%1.f %%)", _name, newInflation);
    } else if (newInflation > 0) {
        NSLog(@"\n%@: Think I'm gonna die this months...prices unbelievably high\nInflation is (%1.f %%)", _name, newInflation);
    } else {
        return;
    }
    
    _inflation = newInflation;
}

#pragma mark - initializer override

- (instancetype) init {
    self = [super init];
    if (self) {
        _pension = 500;
        _averagePrice = 15.f;
        
        //subscription for pension
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentPensionNotification:)
                                                     name:GovernmentPensionDidChangeNotification
                                                   object:nil];
        
        //subscription for average price
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentAveragePriceNotification:)
                                                     name:GovernmentAveragePriceDidChangeNotification
                                                   object:nil];
        
        //subscription for inflation
        [[NSNotificationCenter defaultCenter] addObserver:self
                                                 selector:@selector(governmentInflationNotification:)
                                                     name:GovernmentInflationDidChangeNotification
                                                   object:nil];
    }
    
    return self;
}

#pragma mark - dealloc override

- (void) dealloc {
    NSLog(@"\n\nPensioner %@ died and no longer need to receive notifications...", _name);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
