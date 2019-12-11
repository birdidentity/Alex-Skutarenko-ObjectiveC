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

-(void) governmentPensionNotification:(NSNotification *) notification {
    CGFloat newPension = [[notification.userInfo objectForKey:GovernmentPensionKey] floatValue];
    
    if (_pension < newPension) {
        NSLog(@"\n\nPensioner %@ is so grateful to the government! They rised increased his pension by - %.1f dollars.\n", _name, (newPension - _pension));
    } else if (_pension > newPension) {
        NSLog(@"\n\nPensioner %@ is crying...Government lowered his pension by - %.1f dollars\nNow he have no money to buy food...\n", _name, (_pension - newPension));
    } else {
        return;
    }
    
    _pension = newPension;
}

-(void) governmentAveragePriceNotification:(NSNotification *) notification {
    CGFloat newAveragePrice = [[notification.userInfo objectForKey: GovernmentAveragePriceKey] floatValue];
    
    if (_averagePrice > newAveragePrice) {
        NSLog(@"\n\nPensioner %@ jumping with happiness !-!-! Government decreased average price by - %.1f dollars.\n", _name, (_averagePrice - newAveragePrice));
    } else if (_averagePrice < newAveragePrice) {
        NSLog(@"\n\nPensioner %@ wants to jum from the roof...Government increased average price by - %.1f dollars.\n", _name, (newAveragePrice - _averagePrice));
    } else {
        return;
    }
    
    _averagePrice = newAveragePrice;
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
    }
    
    return self;
}

#pragma mark - dealloc override

- (void) dealloc {
    NSLog(@"\n\nPensioner %@ died and no longer need to receive notifications...\n", _name);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
