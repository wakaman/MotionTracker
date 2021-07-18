//
//  FirstViewController.m
//  MotionTracker
//
//  Created by developer-hackintosh on 6/27/21.
//  Copyright (c) 2021 ___FULLUSERNAME___. All rights reserved.
//

#import "FirstViewController.h"
#import "MotionManagerWrapper.h"
#import "MotionLocationMgr.h"


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
    
    
    [[MotionLocationMgr sharedInstance] currentLocation];
    return;
    
    if (!sg_motionWrapper) {
        sg_motionWrapper = [[MotionManagerWrapper alloc] init];
        NSLog(@"here we init static motion manager wrapper!");
    }
    
    [sg_motionWrapper startAccelerometerWithInitPeriodic:0.5];      // 1.0 / (10, 20) (30, 60) (70, 100) (Hz)
    [sg_motionWrapper startGyroscopeWithInitPeriodic:0.5];
    [sg_motionWrapper startMagnetometerWithInitPeriodic:0.5];
    [sg_motionWrapper startDeviceMotionWithPeriodic:0.5];
    
    
    // what we did here it
    [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
    
    
//
//    -(void) viewDidLoad
//    {
//       // Request to turn on accelerometer and begin receiving accelerometer events
//       [[UIDevice currentDevice] beginGeneratingDeviceOrientationNotifications];
//       [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(orientationChanged:) name:UIDeviceOrientationDidChangeNotification object:nil];
//    }
//
//    - (void)orientationChanged:(NSNotification *)notification
//    {
//       // Respond to changes in device orientation
//    }
//
//    -(void) viewDidDisappear
//    {
//       // Request to stop receiving accelerometer events and turn off accelerometer
//       [[NSNotificationCenter defaultCenter] removeObserver:self];
//       [[UIDevice currentDevice] endGeneratingDeviceOrientationNotifications];
//    }
//
//
    
    
    
    
    
    
    
    NSLog(@"here we need start the tracking motion!");
}

@end
