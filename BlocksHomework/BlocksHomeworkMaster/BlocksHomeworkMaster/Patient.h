//
//  Patient.h
//  BlocksHomeworkMaster
//
//  Created by Vladislav Boyko on 12/12/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN
@class Patient;

typedef void (^GettingWorse)(Patient *);

@interface Patient : NSObject

@property (strong, nonatomic) NSString *name;
@property (assign, nonatomic) CGFloat temperature;

-(void) makeShot;
-(void) gettingWorse: (GettingWorse) gettingWorse;

-(instancetype) initWithName: (NSString *) name;

@end

NS_ASSUME_NONNULL_END
