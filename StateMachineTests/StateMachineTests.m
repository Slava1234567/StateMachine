//
//  StateMachineTests.m
//  StateMachineTests
//
//  Created by Slava on 8/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "StateMachine.h"

@interface StateMachineTests : XCTestCase

@property StateMachine * sM;


@end

@implementation StateMachineTests

- (void)setUp {
    [super setUp];
    
    _sM = [[StateMachine alloc] init];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void) test_PerformAct_WhenStand_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:Stand];
    State newState = _sM.state;
    XCTAssertTrue(newState == Accelerate);
}

- (void) test_PerformAct_WhenStand_WithEvent_NotOne {
    _sM.event = 0;
    
    [_sM perfomActWithState:Stand];
    State newState = _sM.state;
    XCTAssertTrue(newState == Stand);
}

- (void) test_PerformAct_WhenAccelerate_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:Accelerate];
    State newState = _sM.state;
    XCTAssertTrue(newState == Run);
}

- (void) test_PerformAct_WhenAccelerate_WithEvent_NotOne {
    _sM.event =  0;
    
    [_sM perfomActWithState:Accelerate];
    State newState = _sM.state;
    XCTAssertTrue(newState == Stay);
}

- (void) test_PerformAct_WhenRun_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:Run];
    State newState = _sM.state;
    XCTAssertTrue(newState == PrepareForJump);
}

- (void) test_PerformAct_WhenRun_WithEvent_NotOne {
    _sM.event =  0;
    
    [_sM perfomActWithState:Run];
    State newState = _sM.state;
    XCTAssertTrue(newState == Stay);
}


- (void) test_PerformAct_WhenStay_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:Stay];
    State newState = _sM.state;
    XCTAssertTrue(newState == Accelerate);
}

- (void) test_PerformAct_WhenStay_WithEvent_NotOne {
    _sM.event =  0;
    
    [_sM perfomActWithState:Stay];
    State newState = _sM.state;
    XCTAssertTrue(newState == Think);
}

- (void) test_PerformAct_WhenThink_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:Think];
    State newState = _sM.state;
    XCTAssertTrue(newState == Accelerate);
}

- (void) test_PerformAct_WhenThink_WithEvent_NotOne {
    _sM.event =  0;
    
    [_sM perfomActWithState:Think];
    State newState = _sM.state;
    XCTAssertTrue(newState == TurnRigth);
}

- (void) test_PerformAct_WhenTurnRight_WithAnyEvent {
    
    [_sM perfomActWithState:TurnRigth];
    State newState = _sM.state;
    XCTAssertTrue(newState == ComeBack);
}

- (void) test_PerformAct_WhenComeBack_WithAnyEvent {
    
    [_sM perfomActWithState:ComeBack];
    State newState = _sM.state;
    XCTAssertTrue(newState == TurnLeft);
}


- (void) test_PerformAct_WhenTurnLeft_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:TurnLeft];
    State newState = _sM.state;
    XCTAssertTrue(newState == Accelerate);
}

- (void) test_PerformAct_WhenTurnLeft_WithEvent_NotOne {
    _sM.event =  0;
    
    [_sM perfomActWithState:TurnLeft];
    State newState = _sM.state;
    XCTAssertTrue(newState == Think);
}

- (void) test_PerformAct_WhenPrepareForJump_WithEventOne {
    _sM.event =  1;
    
    [_sM perfomActWithState:PrepareForJump];
    State newState = _sM.state;
    XCTAssertTrue(newState == Jump);
}

- (void) test_PerformAct_WhenPrepareForJump_WithEvent_NotOne {
    _sM.event =  0;
    
    [_sM perfomActWithState:PrepareForJump];
    State newState = _sM.state;
    XCTAssertTrue(newState == Stay);
}





- (void) testJump {
    
    
}


- (void)testExample {
    
    // This is an example of a functional test case.
    // Use XCTAssert and related functions to verify your tests produce the correct results.
}

- (void)testPerformanceExample {
    // This is an example of a performance test case.
    [self measureBlock:^{
        // Put the code you want to measure the time of here.
    }];
}

@end
