//
//  GSLogUtils.h
//  
//
//  Created by Xinrong Guo on 13-6-18.
//
//


#ifdef DEBUG
#   define GSDLog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);
#else
#   define GSDLog(...)
#endif

// ALog always displays output regardless of the DEBUG setting
#define GSALog(fmt, ...) NSLog((@"%s [Line %d] " fmt), __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__);


#ifdef DEBUG
#   if TARGET_OS_IPHONE || TARGET_OS_IPHONE_SIMULATOR
#       define GSULog(fmt, ...)  { UIAlertView *alert = [[UIAlertView alloc] initWithTitle:[NSString stringWithFormat:@"%s\n [Line %d] ", __PRETTY_FUNCTION__, __LINE__] message:[NSString stringWithFormat:fmt, ##__VA_ARGS__]  delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles:nil]; [alert show]; }
#   else
#       define GSULog(fmt, ...)  { NSAlert *alert = [NSAlert alertWithMessageText:[NSString stringWithFormat:@"%s\n [Line %d] ", __PRETTY_FUNCTION__, __LINE__] defaultButton:nil alternateButton:nil otherButton:nil informativeTextWithFormat:[NSString stringWithFormat:fmt, ##__VA_ARGS__]]; [alert runModal]; }
#   endif
#else
#   define GSULog(...)
#endif


