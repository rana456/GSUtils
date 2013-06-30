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

- (NSString *)gs_urlEncoding:(NSStringEncoding)encoding {
    //CFStringRef preprocessedString = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(kCFAllocatorDefault, (__bridge CFStringRef)encoding, , <#CFStringEncoding encoding#>)
    return (__bridge NSString *) CFURLCreateStringByAddingPercentEscapes(kCFAllocatorDefault, (__bridge CFStringRef)self,
                                                                                  NULL, CFSTR("!*'();:@&=+$,/?%#[]"),
                                                                                  CFStringConvertNSStringEncodingToEncoding(encoding));
}

@end
