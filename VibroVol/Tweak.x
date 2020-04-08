
#import <Cephei/HBPreferences.h>
#import <UIKit/UIKit.h>
#import <AudioToolbox/AudioServices.h>

BOOL enabled;
HBPreferences *preferences;
NSString* feedbackStyle = @"0";

@interface FBSystemService : NSObject
+(id)sharedInstance;
-(void)exitAndRelaunch:(bool)arg1;
@end

static void RespringDevice() {

    [[%c(FBSystemService) sharedInstance] exitAndRelaunch:YES];

}

void haptics() {

  int feedbackStrength = [feedbackStyle intValue];

  switch (feedbackStrength) {

          case 0:
          AudioServicesPlaySystemSound(1519);
          break;

          case 1:
          AudioServicesPlaySystemSound(1520);
          break;

          case 2:
          AudioServicesPlaySystemSound(1521);
          break;

          case 3:
          break;

          default:
          break;

          
   }

}

  // Rename Tweak To Your Tweak's Name If You Want To; This Is Basically The Indicator To Start A Group
%group Tweak

%hook SBVolumeControl

- (void)increaseVolume {

  %orig;

  if (enabled) {
    haptics();
    
  }
     
}

- (void)decreaseVolume {

  %orig;

  if (enabled) { 
    haptics();

  }  
      
}

%end

%end
  // This Is The End Of The Group, Everything Inside Will Only Be Initialised If The Enabled Switch Is Toggled On (Or Something Else)


%ctor {

    preferences = [[HBPreferences alloc] initWithIdentifier:@"com.amachi.pref"];

    [preferences registerBool:&enabled default:YES forKey:@"enabled"];
    [preferences registerObject:&feedbackStyle default:@"0" forKey:@"feedbackStyle"];

    if (enabled)
      %init(Tweak); // If Enabled Initialise The Group Named Tweak Here, If You Change The Name Of The Group, Make Sure To Do Here As Well

    // respring listener
    CFNotificationCenterAddObserver(CFNotificationCenterGetDarwinNotifyCenter(), NULL, (CFNotificationCallback)RespringDevice, CFSTR("com.amachi.tap/respring"), NULL, CFNotificationSuspensionBehaviorDeliverImmediately);
};