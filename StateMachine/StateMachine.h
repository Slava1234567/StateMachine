//
//  StateMachine.h
//  StateMachineTests
//
//  Created by Slava on 8/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    Stand,
    Accelerate,
    Stay,
    Think,
    ComeBack,
    Jump,
    TurnRigth,
    TurnLeft,
    Run,
    PrepareForJump
} State;

@interface StateMachine : NSObject

@property (strong, nonatomic) NSString* nameState;
@property (unsafe_unretained, nonatomic) State state;
@property (assign, nonatomic) NSInteger event;

- (void)perfomActWithState:(State) state;

@end
