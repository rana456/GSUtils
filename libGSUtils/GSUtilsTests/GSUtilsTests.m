//
//  GSUtilsTests.m
//  GSUtilsTests
//
//  Created by Xinrong Guo on 13-6-21.
//  Copyright (c) 2013年 Xinrong Guo. All rights reserved.
//

#import "GSUtilsTests.h"
#import "GSLogUtils.h"
#import "NSDictionary+GSJSONSupport.h"
#import "NSString+GSHash.h"

@implementation GSUtilsTests

- (void)setUp
{
    [super setUp];
    
    // Set-up code here.
}

- (void)tearDown
{
    // Tear-down code here.
    
    [super tearDown];
}

- (void)testExample
{
    NSString *str = @"test String";
    GSULog(@"%@", [str gs_md5]);
}

@end
