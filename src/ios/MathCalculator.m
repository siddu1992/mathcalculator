/********* MathCalculator.m Cordova Plugin Implementation *******/

#import <Cordova/CDV.h>

@interface MathCalculator : CDVPlugin {
  // Member variables go here.
}

- (void)add:(CDVInvokedUrlCommand*)command;
- (void)substact:(CDVInvokedUrlCommand*)command;

@end

@implementation MathCalculator

-(void)add:(CDVInvokedUrlCommand*)command
{
     CDVPluginResult* pluginResult = nil;
     NSNumber *param1 = [command.arguments objectAtIndex:0] valueForKey:@"param1"];
     NSNumber *param2 = [command.arguments objectAtIndex:0] valueForKey:@"param1"];

  if(param1 >=0 && param2 >=0)
  {
      NSString*total =@(param1 + param2);
      pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
  }
  else{
      pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
  }
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

-(void)substact:(CDVInvokedUrlCommand*)command
{
     CDVPluginResult* pluginResult = nil;
     NSNumber *param1 = [command.arguments objectAtIndex:0] valueForKey:@"param1"];
     NSNumber *param2 = [command.arguments objectAtIndex:0] valueForKey:@"param1"];

  if(param1 >=0 && param2 >=0)
  {
      NSString*total =@(param1 - param2);
      pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_OK messageAsString:total];
  }
  else{
      pluginResult=[CDVPluginResult resultWithStatus:CDVCommandStatus_ERROR];
  }
  [self.commandDelegate sendPluginResult:pluginResult callbackId:command.callbackId];

}

}

 



@end
