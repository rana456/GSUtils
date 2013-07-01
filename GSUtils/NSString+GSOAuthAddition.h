//
//  NSString+GSOAuthAddition.h
//  MoefouSDK
//
//  Created by 鑫容 郭 on 12-4-12.
//  Copyright (c) 2012年 FoOTOo. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSString (GSOAuthAddition)

+ (NSString *)gs_nonce;

+ (NSString *)gs_timestamp;

@end
