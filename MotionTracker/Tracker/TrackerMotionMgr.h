//
//  TrackerMotionMgr.h
//  MotionTracker
//
//  Created by developer-hackintosh on 6/27/21.
//  Copyright (c) 2021 developer-hackintosh. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface TrackerMotionMgr : NSObject




+ (instancetype)sharedInstance;



- (void)startTrack;
- (void)stopTrack;






@end
