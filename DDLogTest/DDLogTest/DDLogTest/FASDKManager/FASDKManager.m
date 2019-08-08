//
//  FASDKManager.m
//  DDLogTest
//
//  Created by develop on 2019/8/6.
//  Copyright © 2019 develop. All rights reserved.
//

#import "FASDKManager.h"
#import "FALogFormater.h"

@implementation FASDKManager

+ (FASDKManager *)sharedInstance {
    static dispatch_once_t onceToken;
    static FASDKManager *manager;
    dispatch_once(&onceToken, ^{
        manager = [[self alloc] init];
    });
    return manager;
}

- (void)launchInWindow:(UIWindow *)window {
    FALogFormater *formatter = [[FALogFormater alloc] init];
    [DDLog addLogger:[DDTTYLogger sharedInstance]];// Xcode 控制台
    [[DDTTYLogger sharedInstance] setLogFormatter:formatter];
//    [DDLog addLogger:[DDASLLogger sharedInstance]];// Apple System Logs
//    [[DDASLLogger sharedInstance] setLogFormatter:formatter];
    
    NSString *path = [NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES) firstObject];
    DDLogFileManagerDefault *fileManagerDefault = [[DDLogFileManagerDefault alloc] initWithLogsDirectory:path];
    
    DDFileLogger *fileLogger = [[DDFileLogger alloc] initWithLogFileManager:fileManagerDefault];// 本地文件日志
    fileLogger.rollingFrequency = 60 * 60 * 24; // 每24小时创建一个新文件
    fileLogger.logFileManager.maximumNumberOfLogFiles = 7;// 最多允许创建7个文件
    
    [fileLogger setLogFormatter:formatter];
    [DDLog addLogger:fileLogger];
}

@end
