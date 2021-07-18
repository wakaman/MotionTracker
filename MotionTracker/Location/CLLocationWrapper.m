//
//  CLLocationWrapper.m
//  MotionTracker
//
//  Created by developer-hackintosh on 7/18/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import "CLLocationWrapper.h"
#import <CoreLocation/CoreLocation.h>


@implementation CLLocationWrapper



+ (bool)significantLocChangeMonitorAvailable {
    return [CLLocationManager significantLocationChangeMonitoringAvailable];
}


+ (bool)monitorAvailableForClass:(CLRegion*)regionClass {
    
    if (nil == regionClass) {
        return false;
    }
    
    return [CLLocationManager isMonitoringAvailableForClass:[regionClass class]];
}


+ (bool)headingAvailable {
    return [CLLocationManager headingAvailable];
}


+ (bool)rangingBeaconAvailable {
    return [CLLocationManager isRangingAvailable];
}


+ (bool)authorizationAvailable {
    
    CLAuthorizationStatus status = [CLLocationManager authorizationStatus];
    return (status & kCLAuthorizationStatusAuthorized) || (status & kCLAuthorizationStatusRestricted);
    //return (status & kCLAuthorizationStatusAuthorizedWhenInUse) || (status & kCLAuthorizationStatusAuthorizedAlways);
}




@end
