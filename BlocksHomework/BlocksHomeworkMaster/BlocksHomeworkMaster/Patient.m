//
//  Patient.m
//  BlocksHomeworkMaster
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Patient.h"

@implementation Patient

-(void) gettingWorse: (GettingWorse) gettingWorse {
    gettingWorse(self);
    NSLog(@"\n\n%@ getting better!\nTemperature falls to - %.1f", _name, _temperature);
}

GettingWorse block = ^(Patient *patient) {
    if (patient.temperature > 37.7) {
        [patient makeShot];
    } else {
        NSLog(@"\n\nDoctor saying that %@ is okay!", patient.name);
    }
};

-(void) makeShot {
    _temperature -= 1;
    NSLog(@"\n\n%@ temperature falls to - %.1f", _name, _temperature);
}

-(instancetype) initWithName: (NSString *) name {
    self = [super init];
    if (self) {
        _name = name;
        _temperature = 36 + (arc4random() % 40) / 10;
        
        [self performSelector:@selector(gettingWorse:) withObject:block afterDelay:(5 + arc4random() % 21)];
    }
    return self;
}

-(void) dealloc {
    NSLog(@"%@ Patient deallocated", _name);
}

@end
