//
//  MotionManagerWrapper.m
//  MotionTracker
//
//  Created by ZY_developer on 27/6/2021.
//  Copyright © 2021 ZY_developer. All rights reserved.
//

#import "MotionManagerWrapper.h"
#import <CoreMotion/CoreMotion.h>


@interface MotionManagerWrapper ()
{
    //
    // @property
    //
    //
    // ...... who we are, who are u, who it's this ......
    //
}


@property (nonatomic) CMMotionManager* motionMgr;


@end



@implementation MotionManagerWrapper



- (instancetype)init {
    
    if (self = [super init]) {
        _motionMgr = [[CMMotionManager alloc] init];
        NSLog(@"CMMotionManager inited!");
    }
    
    return self;
}



//********************************************************************************************
// ...... accelerometer interface ......
//********************************************************************************************
/* kAccelerometerStatusCode */
- (bool)startAccelerometerWithInitPeriodic:(NSTimeInterval)millSeconds {

    // check invalid
    if (!self.motionMgr) {    // nil
        return false;
    }
   
    if (!self.motionMgr.accelerometerAvailable || self.motionMgr.accelerometerActive) {
        return false;
    }
    
    self.motionMgr.accelerometerUpdateInterval = millSeconds;
    if (self.motionMgr.accelerometerAvailable) {
        
        //
        // auto block = ^(CMAccelerometerData* accelermeterData, NSError* error) {};
        // typedef void (^CMAccelerometerHandler)(CMAccelerometerData *accelerometerData, NSError *error);
        //
        
        [self.motionMgr startAccelerometerUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMAccelerometerData * _Nullable accelerometerData, NSError * _Nullable error) {
            NSLog(@"what data goes here!");
            NSLog(@"here we can place a singleton data centre here!");
        }];
    }

    
    //
    // self.motionMgr startAccelerometerUpdatesToQueue:<#(nonnull NSOperationQueue *)#> withHandler:<#^(CMAccelerometerData * _Nullable accelerometerData, NSError * _Nullable error)handler#>
    // CMAccelerometerData data;
    //
//
//    self.mManager = [[CMMotionManager alloc]init];
//    self.mManager.deviceMotionUpdateInterval = 0.5;
//    if (self.mManager.gyroAvailable) {
//
//        [self.mManager startDeviceMotionUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error) {
//            NSLog(@"RotationRate X:%.2lf Y:%.2lf Z:%.2lf ",motion.userAcceleration.x,motion.userAcceleration.y,motion.userAcceleration.z);
//      }];
//    }
//
//
//
    return true;
}


- (void)stopAccelerometerActive {
    
    if (nil == self.motionMgr) {
        return;
    }
    
    if (!self.motionMgr.accelerometerAvailable || !self.motionMgr.accelerometerActive) {
        return;
    }
    
    [self.motionMgr stopAccelerometerUpdates];
}


- (bool)accelerometerStatus
{
    return false;
}


- (bool)isAccelerometerRunning {
    
    return self.motionMgr.accelerometerAvailable && self.motionMgr.accelerometerActive;
}


- (void)resetAccelerometerSpeed:(NSTimeInterval)speed {
    
    NSLog(@"here we are!");
}


- (NSTimeInterval)retriveCurrentAccelemeterSpeed {
    return 0.0f;
}


//*******************************************************************************************************************
// ...... Gyroscope ......
//*******************************************************************************************************************
- (bool)startGyroscopeWithInitPeriodic:(NSTimeInterval)millSeconds {

    // check invalid
     if (!self.motionMgr) {    // nil
         return false;
     }
    
     if (!self.motionMgr.gyroAvailable || self.motionMgr.gyroActive) {
         return false;
     }
     
     self.motionMgr.gyroUpdateInterval = millSeconds;
     if (self.motionMgr.gyroAvailable) {
         
         // auto block = ^(CMGyroData* accelermeterData, NSError* error) {};
         // typedef void (^CMGyroHandler)(CMAccelerometerData *accelerometerData, NSError *error);
         [self.motionMgr startGyroUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMGyroData * _Nullable gyroData, NSError * _Nullable error) {
             NSLog(@"GyroData be handled here");
             NSLog(@"here we can place a singleton data centre here!");
         }];
     }
    
    return true;
}


- (void)stopGyroscopeActive {
    
    if (nil == self.motionMgr) {
        return;
    }
    
    if (!self.motionMgr.gyroAvailable || !self.motionMgr.gyroActive) {
        return;
    }
    
    [self.motionMgr stopGyroUpdates];
}


- (bool)gyroscopeStatus {
    
    return false;
    //
    // return false;
    //
}


- (void)resetGyroscopePeriodicSpeed:(NSTimeInterval)speed {
    return;
}


- (NSTimeInterval)retriveCurrentGyroscopePeriodicSpeed {
    return 0.0;
}


//
// ...... Magnetometer ......
//
- (bool)startMagnetometerWithInitPeriodic:(NSTimeInterval)millSeconds {
    
    if (nil == self.motionMgr) {
        return false;
    }
    
    if (!self.motionMgr.magnetometerAvailable || self.motionMgr.magnetometerActive) {
        return false;
    }
    
    self.motionMgr.magnetometerUpdateInterval = millSeconds;
    if (self.motionMgr.magnetometerAvailable) {
        
        //<#^(CMMagnetometerData * _Nullable magnetometerData, NSError * _Nullable error)handler#>
        [self.motionMgr startMagnetometerUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMMagnetometerData * _Nullable magnetometerData, NSError * _Nullable error) {
            NSLog(@"here we parsed the input data!");
        }];
    }
    
    return true;
}


- (void)stopMagnetometerActive {
    return;
}


- (bool)magnetometerStatus {
    return false;
}


- (void)resetMagnetometerPeriodicSpeed:(NSTimeInterval)speed {
    return;
}


- (NSTimeInterval)retriveMagnetometerPeriodicSpeed {
    
    return 0.0f;
}


//**********************************************************************************************************
// ...... Device motion ......
//**********************************************************************************************************
- (bool)startDeviceMotionWithPeriodic:(NSTimeInterval)millSeconds {
    
    if (nil == self.motionMgr) {
        return false;
    }
    
    if (!self.motionMgr.deviceMotionAvailable || self.motionMgr.deviceMotionActive) {
        return false;
    }
    
    self.motionMgr.deviceMotionUpdateInterval = millSeconds;
    if (self.motionMgr.deviceMotionAvailable) {
        
        [self.motionMgr startDeviceMotionUpdatesToQueue:[NSOperationQueue currentQueue] withHandler:^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error) {
            
            NSLog(@"here we are handling the device motion data!");
        }];
        
        //self.motionMgr startDeviceMotionUpdatesUsingReferenceFrame:<#(CMAttitudeReferenceFrame)#> toQueue:<#(nonnull NSOperationQueue *)#> withHandler:<#^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error)handler#>
        //self.motionMgr startDeviceMotionUpdatesToQueue:<#(nonnull NSOperationQueue *)#> withHandler:<#^(CMDeviceMotion * _Nullable motion, NSError * _Nullable error)handler#>
        //self.motionMgr startDeviceMotionUpdatesUsingReferenceFrame:<#(CMAttitudeReferenceFrame)#>
    }
    
    return true;
}


- (void)stopDeviceMotionActive {
    return;
}


- (bool)deviceMotionStatus {
    return false;
}


- (void)retriveDeviceMotionPeriodicSpeed {
    
    return;
}


@end
