//
//  StateMachine.m
//  StateMachineTests
//
//  Created by Slava on 8/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "StateMachine.h"

@implementation StateMachine

- (instancetype)init
{
    self = [super init];
    if (self) {
        _state = Stand;
        _nameState = @"Stand";
    }
    return self;
}

- (void)perfomActWithState:(State) state  {
    
    switch (state) {
        case Stand:
            [self iStand];
            break;
        case Accelerate:
            [self iAccselerate];
            break;
        case Stay:
            [self iStay];
            break;
        case Think:
            [self iThink];
            break;
        case ComeBack:
            [self iComeBack];
            break;
        case Jump:
            [self iJump];
            break;
        case TurnRigth:
            [self iTurnRight];
            break;
        case TurnLeft: {
            [self iTurnLeft];
            break;
        }
        case Run:
            [self iRun];
            break;
        case PrepareForJump:
            [self iPrepareForJump];
            break;
    }
}

- (void) iStand {
    if (self.event == 1) {
        self.state = Accelerate;
        self.nameState = @"Accelerate";
    } else {
        self.state = Stand;
        self.nameState = @"Stand";
    }
}

- (void) iAccselerate {
    if (self.event == 1) {
        self.state = Run;
        self.nameState = @"Run";
    } else { self.state = Stay;
        self.nameState = @"Stay";
    }
}
- (void) iStay {
    if (self.event == 1) {
        self.state = Accelerate;
        self.nameState = @"Accelerate";
    } else { self.state = Think;
        self.nameState = @"Think";
    }
}
- (void) iThink {
    if (self.event == 1) {
        self.state = Accelerate;
        self.nameState = @"Accelerate";
    } else { self.state = TurnRigth;
        self.nameState = @"TurnRigth";
    }
}

- (void) iTurnLeft {
    if (self.event == 1) {
        self.state = Accelerate;
        self.nameState = @"Accelerate";
    } else { self.state = Think;
        self.nameState = @"Think";
    }
}
- (void) iComeBack {
    self.state = TurnLeft;
    self.nameState = @"TurnLeft";
}
- (void) iJump {
    self.nameState = @"Jump finish";
}

- (void) iTurnRight {
    self.state = ComeBack;
    self.nameState = @"ComeBack";
}
- (void) iRun {
    if (self.event == 1) {
        self.state = PrepareForJump;
        self.nameState = @"PrepareForJump";
    } else { self.state = Stay;
        self.nameState = @"Stay";
    }
}
- (void) iPrepareForJump {
    if (self.event == 1) {
        self.state = Jump;
        self.nameState = @"Jump";
    } else { self.state = Stay;
        self.nameState = @"Stay";
    }
}

@end
