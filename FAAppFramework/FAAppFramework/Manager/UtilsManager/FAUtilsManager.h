//
//  FASDKManager.h
//  DDLogTest
//
//  Created by develop on 2019/8/6.
//  Copyright © 2019 develop. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface FASDKManager : NSObject

+ (FASDKManager *)sharedInstance;

/**
 * @brief 第三方单例类的统一初始化
 */
- (void)launchInWindow;

- (instancetype)init NS_UNAVAILABLE;
+ (instancetype)new NS_UNAVAILABLE;

@end

NS_ASSUME_NONNULL_END
