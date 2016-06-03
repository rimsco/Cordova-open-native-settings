//
//  NativeSettings.m
//  NativeSettings
//
//  Created by selahssea on 05.12.14.
//
//

#import "NativeSettings.h"


@implementation NativeSettings

- (void)open:(CDVInvokedUrlCommand*)command
{

    
    NSString* appsetting = [command.arguments objectAtIndex:0];
    NSString* urls = nil ;
    CDVPluginResult* pluginResult = nil;

    if(SYSTEM_VERSION_LESS_THAN(@"8.0")){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:UIApplicationOpenSettingsURLString]];
    }else{
    
    if([appsetting isEqualToString:@"wifi"]){
        urls = @"prefs:root=WIFI";
    }
    else if([appsetting isEqualToString:@"cellular"]){
        urls = @"prefs:root=MOBILE_DATA_SETTINGS_ID";
    }else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Url is not correct or not available in current iOS version"];
    }
    
    if(urls != nil){
        [[UIApplication sharedApplication] openURL:[NSURL URLWithString:urls]];
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:@"Open setting sucess"];
    }
    else{
        pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR messageAsString:@"Url is null"];
    }
    }
    
}

@end
