//
//  DefaultViewController.m
//  UIViewControllerLyfecycle
//
//  Created by Alexandr Kirilov on 13/04/2020.
//  Copyright © 2020 Alexandr Kirilov. All rights reserved.
//

#import "DefaultViewController.h"

@interface DefaultViewController ()

@end

@implementation DefaultViewController

@synthesize pName;
@synthesize pTestString1;

-(void) loadView {
	
	[super loadView];
	pName = @"2 >> DefaultViewController";
	NSLog(@"%@ -> loadView ",pName);
	pTestString1 = super.pTestString1;
	NSLog(@"%@ -> loadView :: super.pTestString1 = %@",pName,super.pTestString1);
	NSLog(@"%@ -> loadView :: pTestString1 = %@",pName,pTestString1);
	NSLog(@"%@ -> loadView :: super.pTestString2 = %@",pName,super.pTestString2);
	pTestString1 = @"Changed in DefaultViewController";
	[self.view setBackgroundColor:_COLOR_GREEN_LIGHT];
}

-(void) loadViewIfNeeded {
	
	[super loadView];
	NSLog(@"%@ -> loadViewIfNeeded",pName);
}

-(void) viewDidLoad {
	
	[super viewDidLoad];
	NSLog(@"%@ -> viewDidLoad",pName);
}

-(void) viewWillAppear:(BOOL)animated {
	
	[super viewWillAppear:animated];
	NSLog(@"%@ -> viewWillAppear",pName);
}

-(void) viewWillLayoutSubviews {
	
	[super viewWillLayoutSubviews];
	NSLog(@"%@ -> viewWillLayoutSubviews",pName);
}

-(void) viewDidLayoutSubviews {

	[super viewDidLayoutSubviews];
	NSLog(@"%@ -> viewDidLayoutSubviews",pName);
}

-(void) viewDidAppear:(BOOL)animated {
	
	[super viewDidAppear:animated];
	NSLog(@"%@ -> viewDidAppear",pName);
}

-(void) viewWillDisappear:(BOOL)animated {
	
	[super viewWillAppear:animated];
	NSLog(@"%@ -> viewWillAppear",pName);
}

-(void) viewDidDisappear:(BOOL)animated {
	
	[super viewDidDisappear:animated];
	NSLog(@"%@ -> viewDidDisappear",pName);
}

@end
