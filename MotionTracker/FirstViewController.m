//
//  FirstViewController.m
//  MotionTracker
//
//  Created by developer-hackintosh on 6/27/21.
//  Copyright (c) 2021 ___FULLUSERNAME___. All rights reserved.
//

#import "FirstViewController.h"
#import "MotionManagerWrapper.h"


@interface FirstViewController ()


@property (nonatomic, strong) MotionManagerWrapper* motionwapper;

@end


static MotionManagerWrapper* sg_motionWrapper;

@implementation FirstViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)startTrack:(id)sender {
    
    if (!sg_motionWrapper) {
        sg_motionWrapper = [[MotionManagerWrapper alloc] init];
        NSLog(@"here we init static motion manager wrapper!");
    }
    
    [sg_motionWrapper startAccelerometerWithInitPeriodic:0.5];
    NSLog(@"here we need start the tracking motion!");
}

@end
