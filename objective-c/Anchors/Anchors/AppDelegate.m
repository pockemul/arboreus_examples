//
//  AppDelegate.m
//  Anchors
//
//  Created by Alexandr Kirilov on 05/07/2019.
//  Copyright © 2019 Arboreus. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];
	self.window.rootViewController = [[MainViewController alloc] init];
	[self.window makeKeyAndVisible];
	
	return YES;
}

@end