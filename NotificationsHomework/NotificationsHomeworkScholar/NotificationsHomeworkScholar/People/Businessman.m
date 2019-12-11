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

-(void) governmentTaxLevelNotification:(NSNotification *) notification {
    CGFloat newTaxLevel = [[notification.userInfo objectForKey: GovernmentTaxLevelKey] floatValue];
    
    if (_taxLevel > newTaxLevel) {
        NSLog(@"\n\nBusinessman %@ extremely happy with new tax!!! Tax level drecreased by - %.1f %%.\n", _name, (_taxLevel - newTaxLevel));
    } else if (_taxLevel < newTaxLevel) {
        NSLog(@"\n\nBusinessman %@ frustrated... New tax level increased by - %.1f %%.\n", _name, (newTaxLevel - _taxLevel));
    } else {
        return;
    }
    
    _taxLevel = newTaxLevel;
}

-(void) governmentAveragePriceNotification:(NSNotification *) notification {
    CGFloat newAveragePrice = [[notification.userInfo objectForKey: GovernmentAveragePriceKey] floatValue];
    
    if (_averagePrice > newAveragePrice) {
        NSLog(@"\n\nBusinessman %@ extremely happy with new average price! It was decreased by - %.1f dollars. Now he can save some money!\n", _name, (_averagePrice - newAveragePrice));
    } else if (_averagePrice < newAveragePrice) {
        NSLog(@"\n\nBusinessmans got fight with government. Government rised average price by - %.1f dollars.\n", (newAveragePrice - _averagePrice));
    } else {
        return;
    }
    
    _averagePrice = newAveragePrice;
}

#pragma mark - initializer override

-(instancetype)init {
    self = [super init];
    if (self) {
        _taxLevel = 5.5f;
        _averagePrice = 15.f;
        
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
    }
    
    return self;
}

#pragma mark - dealloc override

- (void) dealloc {
    NSLog(@"\n\n%@ unsubscribed from all notifications for vocation time.\n", _name);
    [[NSNotificationCenter defaultCenter] removeObserver:self];
}

@end
