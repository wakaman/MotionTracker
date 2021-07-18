//
//  CLLocationMgr.h
//  MotionTracker
//
//  Created by developer-hackintosh on 7/18/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface CLLocationMgr : NSObject




+ (instancetype)sharedInstance;


- (bool)isSupported;
- (void)currentLocation;
- (void)currentStatus;




@end
