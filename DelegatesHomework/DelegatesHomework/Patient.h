//
//  Patient.h
//  DelegatesHomework
//
//  Created by Vladislav Boyko on 12/9/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@protocol PatientDelegate;

@interface Patient : NSObject

@property (assign, nonatomic) NSInteger headState;
@property (assign, nonatomic) NSInteger legsState;
@property (assign, nonatomic) NSInteger backState;

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;
@property (weak, nonatomic) id <PatientDelegate> delegate;

- (BOOL) isOkay;
- (void) takeAPill;
- (void) makeAShot;
- (void) gotSick;
- (void) useBandageFor: (NSString *) bodyPart;

-(instancetype) initWithName: (NSString *) name
                 temperature: (CGFloat) temperature
              delegateObject: (id <PatientDelegate>) delegate;

@end

@protocol PatientDelegate <NSObject>

@property (assign, nonatomic) NSInteger headCondition;
@property (assign, nonatomic) NSInteger legsCondition;
@property (assign, nonatomic) NSInteger backCondition;

- (void) checkPatient: (Patient *) patient;
- (void) patientFullbodyInspect: (Patient *) patient;

@end

NS_ASSUME_NONNULL_END
