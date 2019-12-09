//
//  Patient.m
//  DelegatesHomework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(BOOL) isOkay {
    BOOL feelingGood = YES;
    if (_temperature > 37) {
        
        NSLog(@"%@ have a temperature - %.1f, seems like he need to visit a doctor", _name, _temperature);
        feelingGood = NO;
        
    } else {
        
        NSLog(@"%@ feel better, temperature - %.1f", _name, _temperature);
        feelingGood = YES;
        
    }
    
    if (!feelingGood) {
        [self.delegate checkPatient:self];
    }
    
    return feelingGood;
}

- (void) takeAPill {
    CGFloat pillEffect = 0.5 + arc4random() % 2;
    _temperature -= pillEffect;
}

- (void) makeAShot {
    CGFloat shotEffect = 1.5 + arc4random() % 2;
    _temperature -= shotEffect;
}

- (void) gotSick {
    CGFloat tempGetHigherBy = 0.5 + arc4random() % 2;
    _temperature += tempGetHigherBy;
    NSLog(@"Seems like %@ getting sick, temperature went to - %.1f", _name, _temperature);
}

- (void) useBandageFor:(NSString *)bodyPart {
    NSInteger bandageHealsBy = 10 + arc4random() % 16;
    
    if ([bodyPart  isEqual: @"head"]) {
        _headState += bandageHealsBy;
        NSLog(@"%@'s head feeling better\n head condition: %ld", _name, _headState);
    } else if ([bodyPart isEqual: @"legs"]) {
        _legsState += bandageHealsBy;
        NSLog(@"%@'s legs rested\n legs condition: %ld", _name, _legsState);
    } else if ([bodyPart isEqual: @"back"]) {
        _backState += bandageHealsBy;
        NSLog(@"%@'s back relaxed\n back condition: %ld", _name, _legsState);
    }
}

#pragma mark - initializers

-(instancetype) initWithName:(NSString *)name
                 temperature:(CGFloat)temperature
              delegateObject:(id <PatientDelegate>)delegate {
    self = [super init];
    if (self) {
        _name = name;
        _temperature = temperature;
        _delegate = delegate;
    }
    
    return self;
}

@end
