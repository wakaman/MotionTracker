//
//  LocationManagerWrapper.m
//  MotionTracker
//
//  Created by ZY_developer on 17/7/2021.
//  Copyright © 2021 ZY_developer. All rights reserved.
//

#import "LocationManagerWrapper.h"
#import <CoreLocation/CoreLocation.h>


@implementation LocationManagerWrapper



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
    return (status & kCLAuthorizationStatusAuthorizedWhenInUse) || (status & kCLAuthorizationStatusAuthorizedAlways);
}


@end
