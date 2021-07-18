//
//  MotionLocationMgr.h
//  MotionTracker
//
//  Created by ZY_developer on 17/7/2021.
//  Copyright © 2021 ZY_developer. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MotionLocationMgr : NSObject








+ (instancetype)sharedInstance;


- (bool)isSupported;
- (void)currentLocation;
- (void)currentStatus;


@end

NS_ASSUME_NONNULL_END
