//
//  NSString+GSEncode.m
//  MoefouSDK
//
//  Created by 鑫容 郭 on 12-4-5.
//  Copyright (c) 2012年 FoOTOo. All rights reserved.
//

#import "NSString+GSEncode.h"

//@";/?:@&=$+{}<>,"
@implementation NSString (GSEncode)

+ (NSString *)gs_base64Encode:(const uint8_t *)input {
    static const char map[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/";
    
    NSMutableData* data = [NSMutableData dataWithLength:28];
    uint8_t* out = (uint8_t*) data.mutableBytes;
    
    for (int i = 0; i < 20;) {
        int v  = 0;
        for (const int N = i + 3; i < N; i++) {
            v <<= 8;
            v |= 0xFF & input[i];
        }
        *out++ = map[v >> 18 & 0x3F];
        *out++ = map[v >> 12 & 0x3F];
        *out++ = map[v >> 6 & 0x3F];
        *out++ = map[v >> 0 & 0x3F];
    }
    out[-2] = map[(input[19] & 0x0F) << 2];
    out[-1] = '=';
    return [[NSString alloc] initWithData:data encoding:NSASCIIStringEncoding];
}


- (NSString *)gs_urlEncoding:(NSStringEncoding)encoding {
    //CFStringRef preprocessedString = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (__bridge CFStringRef)encoding, , <#CFStringEncoding encoding#>)
    return (__bridge NSString *) CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)self,
                                                                                  NULL, CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                  CFStringConvertNSStringEncodingToEncoding(encoding));
}

@end
