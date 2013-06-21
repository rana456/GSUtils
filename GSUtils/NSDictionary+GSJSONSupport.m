//
//  NSDictionary+GS_JSONSupport.m
//  izhuomi_ios
//
//  Created by Xinrong Guo on 13-4-10.
//  Copyright (c) 2013年 Xinrong Guo. All rights reserved.
//

#import "NSDictionary+GSJSONSupport.h"
#import "GSLogUtils.h"

@implementation NSDictionary (GSJSONSupport)

+(NSDictionary *)gs_dictionaryWithContentsOfJSONFileURL:(NSURL *)url {
    NSDictionary *dict = nil;
    NSError *err;
    NSData *data = [NSData dataWithContentsOfURL:url options:kNilOptions error:&err];
    if (err) {
        GSALog(@"%@", [err localizedDescription]);
    }
    else {
        dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&err];
        
        if (err) {
            dict = nil;
            GSALog(@"%@", [err localizedDescription]);
        }
    }
    
    return dict;
}

+(NSDictionary *)gs_dictionaryWithContentsOfJSONFilePath:(NSString *)path {
    NSDictionary *dict = nil;
    NSError *err;
    NSData *data = [NSData dataWithContentsOfFile:path options:kNilOptions error:&err];
    if (err) {
        GSALog(@"%@", [err localizedDescription]);
    }
    else {
        dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:&err];
        
        if (err) {
            dict = nil;
            GSALog(@"%@", [err localizedDescription]);
        }
    }
    
    return dict;
}

@end
