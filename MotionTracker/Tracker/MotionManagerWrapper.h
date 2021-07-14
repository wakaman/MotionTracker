//
//  MotionManagerWrapper.h
//  MotionTracker
//
//  Created by ZY_developer on 27/6/2021.
//  Copyright © 2021 ZY_developer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MotionManagerWrapper : NSObject
{
}


//*************************************************************************
// ...... Accelerometer interface ......
//*************************************************************************
- (bool)startAccelerometerWithInitPeriodic:(NSTimeInterval)millSeconds;
- (void)stopAccelerometerActive;
- (bool)accelerometerStatus;
- (void)resetAccelerometerSpeed:(NSTimeInterval)speed;
- (NSTimeInterval)retriveCurrentAccelemeterSpeed;


//***************************************************************************
// ...... Gyroscope interface .....
//***************************************************************************
- (bool)startGyroscopeWithInitPeriodic:(NSTimeInterval)millSeconds;
- (void)stopGyroscopeActive;
- (bool)gyroscopeStatus;
- (void)resetGyroscopePeriodicSpeed:(NSTimeInterval)speed;
- (NSTimeInterval)retriveCurrentGyroscopePeriodicSpeed;


//****************************************************************************
// ...... Magnetometer ......
//****************************************************************************
- (bool)startMagnetometerWithInitPeriodic:(NSTimeInterval)millSeconds;
- (void)stopMagnetometerActive;
- (bool)magnetometerStatus;
- (void)resetMagnetometerPeriodicSpeed:(NSTimeInterval)speed;
- (NSTimeInterval)retriveMagnetometerPeriodicSpeed;


//*****************************************************************************
// ...... Device motion ......
//*****************************************************************************
- (bool)startDeviceMotionWithPeriodic:(NSTimeInterval)millSeconds;
- (void)stopDeviceMotionActive;
- (bool)deviceMotionStatus;
- (void)retriveDeviceMotionPeriodicSpeed;


@end

NS_ASSUME_NONNULL_END
