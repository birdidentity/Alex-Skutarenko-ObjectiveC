//
//  WorstDoctor.m
//  DelegatesHomework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "WorstDoctor.h"

@implementation WorstDoctor

-(void)checkPatient:(Patient *)patient {
    NSLog(@"Worst doctor ever! Saying that %@ is okay", patient.name);
}

@end
