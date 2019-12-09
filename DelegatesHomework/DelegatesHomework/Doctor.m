//
//  Doctor.m
//  DelegatesHomework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import "Doctor.h"
#import "Patient.h"

@implementation Doctor

- (void)checkPatient: (Patient *) patient {
    
    if (patient.temperature > 37 && patient.temperature < 38) {
        
        NSLog(@"Hello, I'm a doctorDelegate, please take a pill");
        [patient takeAPill];
        NSLog(@"%@ took a pill, his temperature falls to %.1f", patient.name, patient.temperature);
        
        [patient isOkay];
        
    } else if (patient.temperature >= 38) {
        NSLog(@"Hello, I'm a doctorDelegate, please make a shot");
        [patient makeAShot];
        NSLog(@"%@ took a shot, his temperature falls to %.1f", patient.name, patient.temperature);
        
        [patient isOkay];
    }
    
}

- (void) patientFullbodyInspect: (Patient *) patient {
    if (patient.backState < 50) {
        NSLog(@"Seems like %@ have problem with his back \n Condition : %ld", patient.name, patient.backState);
        [patient useBandageFor: @"back"];
        [patient.delegate patientFullbodyInspect:patient];
    } else if (patient.legsState < 50) {
        NSLog(@"Seems like %@ have a problem with his legs \n Condition: %ld", patient.name, patient.legsState);
        [patient useBandageFor: @"legs"];
        [patient.delegate patientFullbodyInspect:patient];
    } else if (patient.headState < 50) {
        NSLog(@"Seems like %@ have a problem with his head \n Condition %ld", patient.name, patient.headState);
        [patient useBandageFor: @"head"];
        [patient.delegate patientFullbodyInspect:patient];
    } else {
        NSLog(@"Investigation finished, %@ is okay!", patient.name);
    }
}

@end
