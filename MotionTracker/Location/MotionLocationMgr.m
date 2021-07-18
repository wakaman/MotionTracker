//
//  MotionLocationMgr.m
//  MotionTracker
//
//  Created by ZY_developer on 17/7/2021.
//  Copyright © 2021 ZY_developer. All rights reserved.
//

#import "MotionLocationMgr.h"
#import "LocationManagerWrapper.h"
#import <CoreLocation/CoreLocation.h>


@interface MotionLocationMgr () <CLLocationManagerDelegate>


@property (nonatomic, strong) CLLocationManager* locationMgr;


@end




@implementation MotionLocationMgr



+ (instancetype)sharedInstance {
    
    static MotionLocationMgr* instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[MotionLocationMgr alloc] init];
    });
    
    return instance;
}


- (instancetype)init {
    
    if (self = [super init]) {
        _locationMgr = [[CLLocationManager alloc] init];
        _locationMgr.delegate = self;
    }
    
    return self;
}


- (bool)isSupported {
    
    return [LocationManagerWrapper headingAvailable] && [LocationManagerWrapper significantLocChangeMonitorAvailable];
}

- (void)currentLocation {
    
    [self.locationMgr startUpdatingLocation];
    // NSLog(@"here we are, currentLocation!");
}


- (void)currentStatus {
    
    self.locationMgr.distanceFilter;
    [self.locationMgr startUpdatingLocation];
    
    // [self.locationMgr requestAlwaysAuthorization];
    
    NSLog(@"currentStatus, u win!");
}


#pragma mark "CoreLocation Delegate's"

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    
    switch (status) {
            
        case kCLAuthorizationStatusNotDetermined:
        {
            [self.locationMgr requestWhenInUseAuthorization];
//
//            UIAlertController* alert = [UIAlertController alertControllerWithTitle:@"Setting location permission"
//                                                                           message:@"U should permit it"
//                                                                    preferredStyle:UIAlertControllerStyleAlert];
//            UIAlertAction* defaultAction = [UIAlertAction actionWithTitle:@"OK"
//                                                                    style:UIAlertActionStyleDefault
//                                                                  handler:^void(UIAlertAction* action) {
//                NSLog(@"here we do something!");
//            }];
//            UIAlertAction* cancelAction = [UIAlertAction actionWithTitle:@"Cancel"
//                                                                   style:UIAlertActionStyleCancel
//                                                                 handler:^void(UIAlertAction* action) {
//
//            }];
//
//            [alert addAction:defaultAction];
//            [alert addAction:cancelAction];
//            [self presentViewController:alert animated:YES completion:nil];
//
        }
        break;
            
        case kCLAuthorizationStatusDenied:
            break;
            
        case kCLAuthorizationStatusRestricted:
            break;
            
        //case kCLAuthorizationStatusAuthorized:
        case kCLAuthorizationStatusAuthorizedAlways:
            break;
            
        case kCLAuthorizationStatusAuthorizedWhenInUse:
            break;
    }
}


- (void)locationManager:(CLLocationManager *)manager didVisit:(CLVisit *)visit {
    NSLog(@"Here we are");
}


- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
    
    
}


- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
    
    if (nil == manager || nil == locations) {
        return;
    }
    
    for (CLLocation* loc in locations) {
        NSLog(@"location: %@", loc);
    }
    
    // NSLog(@"What's about's this");
}


- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    
    NSLog(@"we got error happened!");
}


//
//- (void)loca
//


@end
