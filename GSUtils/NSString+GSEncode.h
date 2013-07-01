//
//  NSString+GSEncode.h
//  MoefouSDK
//
//  Created by 鑫容 郭 on 12-4-5.
//  Copyright (c) 2012年 FoOTOo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (GSEncode)

+ (NSString *)gs_base64Encode:(const uint8_t *)input;


- (NSString *)gs_urlEncoding:(NSStringEncoding)encoding;


@end
