#include "PDPRootListController.h"
#import <AudioToolbox/AudioServices.h>

@implementation PDPRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}




-(void)openTwitter {
	AudioServicesPlaySystemSound(1519);
	NSURL *url;

	// check which of these apps are installed
	if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]]) {
		url = [NSURL URLWithString:@"tweetbot:///user_profile/vondrck"];
	}
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]]) {
		url = [NSURL URLWithString:@"twitterrific:///profile?screen_name=vondrck"];
	}
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]]) {
		url = [NSURL URLWithString:@"tweetings:///user?screen_name=vondrck"];
	}
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]]) {
		url = [NSURL URLWithString:@"twitter://user?screen_name=vondrck"];
	}
	else {
		url = [NSURL URLWithString:@"https://mobile.twitter.com/vondrck"];
	}

	
	[[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

-(void)openTwitterHer {
	AudioServicesPlaySystemSound(1519);
	NSURL *url;

	// check which of these apps are installed
	if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetbot:"]]) {
		url = [NSURL URLWithString:@"tweetbot:///user_profile/Litteeen"];
	}
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitterrific:"]]) {
		url = [NSURL URLWithString:@"twitterrific:///profile?screen_name=Litteeen"];
	}
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"tweetings:"]]) {
		url = [NSURL URLWithString:@"tweetings:///user?screen_name=Litteeen"];
	}
	else if ([[UIApplication sharedApplication] canOpenURL:[NSURL URLWithString:@"twitter:"]]) {
		url = [NSURL URLWithString:@"twitter://user?screen_name=Litteeen"];
	}
	else {
		url = [NSURL URLWithString:@"https://mobile.twitter.com/Litteeen"];
	}

	
	[[UIApplication sharedApplication] openURL:url options:@{} completionHandler:nil];
}

// send respring notification
-(void)saveTapped {
	AudioServicesPlaySystemSound(1519);
	CFNotificationCenterPostNotification(CFNotificationCenterGetDarwinNotifyCenter(), CFSTR("com.amachi.tap/respring"), NULL, NULL, YES);
}


- (void)SendEmail {
	AudioServicesPlaySystemSound(1519);
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"http://github.com/Amachik"]
	options:@{}
	completionHandler:nil];
}

- (void)PayPal {
	AudioServicesPlaySystemSound(1519);
	[[UIApplication sharedApplication]
	openURL:[NSURL URLWithString:@"http://paypal.me/plzzhelpmeout"]
	options:@{}
	completionHandler:nil];
}




@end
