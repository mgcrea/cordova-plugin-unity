/********* Unity.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>
#import "UI/UnityView.h"
#import "UnityAppController.h"

@interface Unity : CDVPlugin {
    UnityAppController* _appDelegate;
    UnityView* _unityView;
    UIView* _rootView;
}

@property (nonatomic, strong) UIViewController* unityViewController;
- (void)coolMethod:(CDVInvokedUrlCommand*)command;
- (void)show:(CDVInvokedUrlCommand*)command;
@end

@implementation Unity

- (CDVPlugin*)initWithWebView:(UIWebView*)theWebView
{
    DLog(@"initWithWebView: theWebView");
    self = [super initWithWebView:theWebView];
    if (self) {
        _appDelegate = (UnityAppController *)[[UIApplication sharedApplication] delegate];
        _unityView = _appDelegate.unityView;
        _rootView = _appDelegate.rootView;
    }
    return self;
}

- (void)show:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;

    float x = [[command argumentAtIndex:0] floatValue];
    float y = [[command argumentAtIndex:1] floatValue];
    float width = [[command argumentAtIndex:2] floatValue];
    float height = [[command argumentAtIndex:3] floatValue];
    DLog(@"show: [%f,%f,%f,%f]", x, y, width, height);

    CGRect unityFrame = CGRectMake(x, y, width, height);
    _unityView.frame = unityFrame;
    [_rootView addSubview:_unityView];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)hide:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    DLog(@"hide:");

    [_unityView removeFromSuperview];

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

- (void)sendMessage:(CDVInvokedUrlCommand*)command
{
    CDVPluginResult* pluginResult = nil;
    NSString* message = [command.arguments objectAtIndex:0];
    DLog(@"sendMessage: [%@]", message);

    UnitySendMessage("DeviceCommunication", "MobileToUnity", [message UTF8String]);

    pluginResult = [CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsBool:YES];
    [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];
}

@end
