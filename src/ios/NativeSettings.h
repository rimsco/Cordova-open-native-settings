//
//  NativeSettings.h
//  NativeSettings
//
//  Created by selahssea on 05.12.14.
//
//

#import <Cordova/CDV.h>

#define SYSTEM_VERSION_LESS_THAN(v)                 ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)


@interface NativeSettings : CDVPlugin

- (void)open:(CDVInvokedUrlCommand*)command;

@end
