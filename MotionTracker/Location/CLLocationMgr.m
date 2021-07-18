//
//  CLLocationMgr.m
//  MotionTracker
//
//  Created by developer-hackintosh on 7/18/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import "CLLocationMgr.h"
#import "CLLocationWrapper.h"
#import <CoreLocation/CoreLocation.h>


@interface CLLocationMgr () <CLLocationManagerDelegate>


@property (nonatomic, strong) CLLocationManager* locMgr;

@end



@implementation CLLocationMgr




+ (instancetype)sharedInstance {
    
    static CLLocationMgr* instance;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[CLLocationMgr alloc] init];
    });
    
    return instance;
}


- (instancetype)init {
    
    if (self = [super init]) {
        _locMgr = [[CLLocationManager alloc] init];
        _locMgr.delegate = self;
    }
    
    return self;
}


- (bool)isSupported {
    
    return [CLLocationWrapper headingAvailable] && [CLLocationWrapper significantLocChangeMonitorAvailable];
}

- (void)currentLocation {
    
    [self.locMgr startUpdatingLocation];
    // NSLog(@"here we are, currentLocation!");
}


- (void)currentStatus {
    
    self.locMgr.distanceFilter;
    [self.locMgr startUpdatingLocation];
    
    // [self.locationMgr requestAlwaysAuthorization];
    
    NSLog(@"currentStatus, u win!");
}


#pragma mark "CoreLocation Delegate's"

- (void)locationManager:(CLLocationManager *)manager didChangeAuthorizationStatus:(CLAuthorizationStatus)status {
    
    switch (status) {
            
        case kCLAuthorizationStatusNotDetermined:
        {
            //[self.locationMgr requestWhenInUseAuthorization];
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
        //case kCLAuthorizationStatusAuthorizedAlways:
        //    break;
          
        //
        //case kCLAuthorizationStatusAuthorizedWhenInUse:
        //    break;
    }
}


//- (void)locationManager:(CLLocationManager *)manager didVisit:(CLVisit *)visit {
//    NSLog(@"Here we are");
//}
//
//
//- (void)locationManager:(CLLocationManager *)manager didUpdateHeading:(CLHeading *)newHeading {
//    
//    
//}
//
///Volumes/CodeReposity/iOS/MotionTracker/MotionTracker/AppDelegate.m
//- (void)locationManager:(CLLocationManager *)manager didUpdateLocations:(NSArray<CLLocation *> *)locations {
//    
//    if (nil == manager || nil == locations) {
//        return;
//    }
//    
//    for (CLLocation* loc in locations) {
//        NSLog(@"location: %@", loc);
//    }
//    
//    // NSLog(@"What's about's this");
//}


- (void)locationManager:(CLLocationManager *)manager didFailWithError:(NSError *)error {
    
    NSLog(@"we got error happened!");
}






@end
