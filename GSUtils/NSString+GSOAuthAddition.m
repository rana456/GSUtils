//
//  NSString+GSOAuthAddition.m
//  MoefouSDK
//
//  Created by 鑫容 郭 on 12-4-12.
//  Copyright (c) 2012年 FoOTOo. All rights reserved.
//

#import "NSString+GSOAuthAddition.h"

@implementation NSString (OAuthAddition)

+ (NSString *)gs_nonce {
    CFUUIDRef uuid = CFUUIDCreate(NULL);
    CFStringRef s = CFUUIDCreateString(NULL, uuid);
    CFRelease(uuid);
    NSString *str = (__bridge_transfer NSString *)s;
    return str;
}

+ (NSString *)gs_timestamp {
    time_t t;
    time(&t);
    mktime(gmtime(&t));
    NSString *timestampStr = [NSString stringWithFormat:@"%lu", t];
    return timestampStr;
}

@end
