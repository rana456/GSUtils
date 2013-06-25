//
//  libGSUtilsTests.m
//  libGSUtilsTests
//
//  Created by Xinrong Guo on 13-6-21.
//  Copyright (c) 2013年 Xinrong Guo. All rights reserved.
//

#import "libGSUtilsTests.h"
#import "GSLogUtils.h"
#import "NSDictionary+GSJSONSupport.h"
#import "NSString+GSHash.h"
#import "NSString+GSImageName.h"

@implementation libGSUtilsTests

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
    GSDLog(@"%@", [str gs_md5]);
    GSDLog(@"%@", [NSString gs_highResImageNameFromNormalResImageName:@"asdf.png"]);
}

@end
