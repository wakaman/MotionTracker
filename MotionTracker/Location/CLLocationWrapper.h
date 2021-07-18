//
//  CLLocationWrapper.h
//  MotionTracker
//
//  Created by developer-hackintosh on 7/18/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLRegion;

@interface CLLocationWrapper : NSObject
{}



+ (bool)significantLocChangeMonitorAvailable;
+ (bool)monitorAvailableForClass:(CLRegion*)regionClass;
+ (bool)headingAvailable;
+ (bool)rangingBeaconAvailable;

+ (bool)authorizationAvailable;

@end
