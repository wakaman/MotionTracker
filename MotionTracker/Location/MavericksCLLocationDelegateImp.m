//
//  MavericksCLLocationDelegateImp.m
//  MotionTracker
//
//  Created by developer-hackintosh on 7/19/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import "MavericksCLLocationDelegateImp.h"
#import <CoreLocation/CoreLocation.h>


@interface MavericksCLLocationDelegateImp () <CLLocationManagerDelegate>



@end





@implementation MavericksCLLocationDelegateImp



- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    
    switch (status) {
        case kCLAuthorizationStatusAuthorized:
            break;
            
        case kCLAuthorizationStatusDenied:
            break;
            
        case kCLAuthorizationStatusNotDetermined:
            break;
            
        case kCLAuthorizationStatusRestricted:
            break;
    }
}


- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    
    NSLog(@"Here we are!");
    
}


- (void)locationManager:(CLLocationManager *)manager didFinishDeferredUpdatesWithError:(NSError *)error {
    
    NSLog(@"here we ar");
    
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray *)locations {
    
    NSLog(@"here we ar");
}


//
//- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
//
//}
//



@end
