//
//  ViewController.m
//  TimerDemo7
//
//  Created by frank on 18/09/2016.
//  Copyright © 2016 frank. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic, weak) IBOutlet UILabel* counterLabel;
@property (nonatomic, assign) int counterValue;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self updateCounterWithValue:0];
    [NSTimer scheduledTimerWithTimeInterval:.5 target:self selector:@selector(timerDidFire:) userInfo:nil repeats:YES];
}


- (void)timerDidFire:(NSTimer*)timer
{
    [self updateCounterWithValue:self.counterValue + 1];
}

- (void)updateCounterWithValue:(int)newValue
{
    self.counterValue = newValue;
    self.counterLabel.text = [NSString stringWithFormat:@"%d", newValue];
}

@end
