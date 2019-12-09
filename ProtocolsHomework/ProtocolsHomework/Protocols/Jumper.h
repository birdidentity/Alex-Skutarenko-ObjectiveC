//
//  Jumper.h
//  ProtocolsHomework
//
//  Created by Vladislav Boyko on 12/8/19.
//  Copyright © 2019 Buckwheat. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN

typedef enum {
    classicJumper,
    cyberJumber
} JumperType;

@protocol Jumper <NSObject>

@property (assign, nonatomic) JumperType jumperType;
@property (assign, nonatomic) CGFloat maxJumpHeight;

-(void) jump;


@end

NS_ASSUME_NONNULL_END
