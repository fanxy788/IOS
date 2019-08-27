//
//  FALogFormater.m
//  DDLogTest
//
//  Created by develop on 2019/8/7.
//  Copyright © 2019 develop. All rights reserved.
//

#import "FALogFormater.h"

@implementation FALogFormater

- (NSString *)formatLogMessage:(DDLogMessage *)logMessage
{
    NSString *logLevel = nil;
    switch (logMessage.flag) {
        case DDLogFlagDebug:
            logLevel = @"[Debug] -> ";
            break;
        case DDLogFlagInfo:
            logLevel = @"[info] -> ";
            break;
        case DDLogFlagWarning:
            logLevel = @"[Warning] -> ";
            break;
        case DDLogFlagError:
            logLevel = @"[Error] -> ";
            break;
        default:
            logLevel = @"[Verbose] -> ";
            break;
    }
    
//    NSString *formatterString = [NSString stringWithFormat:@"%@[%@ %@][line %@] %@", logLevel, logMessage.fileName, logMessage.function, @(logMessage.line), logMessage.message];
//    NSString *formatterString = [NSString stringWithFormat:@"%@[%@ line: %@] %@", logLevel, logMessage.fileName, @(logMessage.line), logMessage.message];
    NSString *formatterString = [NSString stringWithFormat:@"%@ %@[%@ line: %@] %@", logMessage.timestamp, logLevel, logMessage.fileName, @(logMessage.line), logMessage.message];
    
    return formatterString;
}

@end
