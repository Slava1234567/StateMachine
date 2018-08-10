//
//  ViewController.m
//  StateMachine
//
//  Created by Slava on 8/10/18.
//  Copyright © 2018 Slava. All rights reserved.
//

#import "ViewController.h"
#import "StateMachine.h"

@interface ViewController ()

@property (strong, nonatomic) StateMachine* stateMachine;
@property (strong, nonatomic) NSTimer* timer;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.stateMachine = [[StateMachine alloc] init];
    
}



- (IBAction)start:(UIButton *)sender {
    
    
   self.timer = [NSTimer scheduledTimerWithTimeInterval:0.5 target:self selector:@selector(setTextwithState) userInfo:nil repeats:YES];
    
}

- (void) setTextwithState {
    
    if (self.stateMachine.state != Jump) {
        
        NSInteger event = arc4random_uniform(2);
        self.stateMachine.event = event;
        [self.stateMachine perfomActWithState:self.stateMachine.state];
        self.Label.text = self.stateMachine.nameState;
        
    } else {
        [self.timer invalidate];
        self.Label.text = @"Jump And finish";
    }
}


@end








