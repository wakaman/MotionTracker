//
//  SoLoMobile.m
//  MotionTracker
//
//  Created by ZY_developer on 16/7/2021.
//  Copyright © 2021 ZY_developer. All rights reserved.
//

#import "SoLoMobile.h"
#import <CoreLocation/CoreLocation.h>



@interface SoLoMobile ()
{
    
}

@property (nonatomic, strong) CLLocationManager* locationMgr;

@end




@implementation SoLoMobile


- (instancetype)init {
    
    if (self = [super init]) {
        _locationMgr = [[CLLocationManager alloc] init];
        _locationMgr.delegate = self;
        NSLog(@"location instance allocated successed!");
    }
    
    return self;
}

@end
