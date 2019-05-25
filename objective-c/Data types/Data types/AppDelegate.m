//
//  AppDelegate.m
//  Data types
//
//  Created by Alexandr Kirilov on 25/05/2019.
//  Copyright © 2019 none. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
	
	// Boolean
	BOOL vBoolean;
	vBoolean = YES; // 1, true;
	NSLog(@"Boolean value YES: %i, sizeOf: %lu",vBoolean,sizeof(vBoolean));
	vBoolean = NO; // 0, false;
	NSLog(@"Boolean value NO: %i, sizeOf: %lu",vBoolean,sizeof(vBoolean));
	vBoolean = 1;
	NSLog(@"Boolean value 1: %i, sizeOf: %lu",vBoolean,sizeof(vBoolean));
	vBoolean = 0;
	NSLog(@"Boolean value 0: %i, sizeOf: %lu",vBoolean,sizeof(vBoolean));
	vBoolean = true;
	NSLog(@"Boolean value true: %i, sizeOf: %lu",vBoolean,sizeof(vBoolean));
	vBoolean = false;
	NSLog(@"Boolean value false: %i, sizeOf: %lu",vBoolean,sizeof(vBoolean));
	
	// Integer
	int vInteger = 2147483647;
	NSLog(@"Integer (int) value minimum: %i, maximum: %i, sizeOf: %lu",vInteger*(-1),vInteger,sizeof(vInteger));
	
	// Unsigned Integer
	unsigned int vUnsignedInt = 4294967295;
	NSLog(@"Unsigned Integer (unsigned int) value minimum: 0, maximum: %i, sizeOf: %lu",vUnsignedInt,sizeof(vUnsignedInt));
	
	// Short
	short vShort = 32767;
	NSLog(@"Short (short) value minimum: %i, maximum: %i, sizeOf: %lu",vShort*(-1),vShort,sizeof(vShort));
	
	// Unsigned Short
	unsigned short vUnsignedShort = 65535;
	NSLog(@"Unsigned Short (unsigned short) value minimum: 0, maximum: %i, sizeOf: %lu",vUnsignedShort,sizeof(vUnsignedShort));
	
	// Long
	long vLong = 2147483647;
	NSLog(@"Long (long) value minimum: %li, maximum: %li, sizeOf: %lu",vLong*(-1),vLong,sizeof(vLong));
	
	// Unsigned Long
	unsigned long vUnsignedLong = 4294967295;
	NSLog(@"Unsigned Long (unsigned long) value minimum: 0, maximum: %li, sizeOf: %lu",vUnsignedLong,sizeof(vUnsignedLong));
	
	// Float
	float vFloatMin = 1.2E-38;
	float vFloatMax = 3.4E+38;
	NSLog(@"Float (float) value minimum: %a, maximum: %a, sizeOf: %lu",vFloatMin,vFloatMax,sizeof(vFloatMax));
	
	// Double
	double vDoubleMin = 2.3E-308;
	double vDoubleMax = 1.7E+308;
	NSLog(@"Double (double) value minimum: %a, maximum: %a, sizeOf: %lu",vDoubleMin,vDoubleMax,sizeof(vDoubleMax));

	NSInteger vNSInteger = vLong;
	NSLog(@"NSInteger (long) value minimum: %li, maximum: %li, sizeOf: %lu",vNSInteger*(-1),vNSInteger,sizeof(vNSInteger));
	
	NSUInteger vNSUInteger = vUnsignedLong;
	NSLog(@"NSUInteger (unsigned long) value minimum: 0, maximum: %li, sizeOf: %lu",vNSUInteger,sizeof(vNSUInteger));
	
	CGFloat vCGFloat = vDoubleMax;
	NSLog(@"CGFloat (double) value minimum: %a, maximum: %a, sizeOf: %lu",vFloatMin,vCGFloat,sizeof(vCGFloat));

    return YES;
}

@end
