//
//  LoginController.m
//  IKit
//
//  Created by ideawu on 15-2-16.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "LoginController.h"
#import "BuyController.h"

@interface LoginController (){
	IImage *_logo;
	IButton *_submit;
	IView *_captcha_div;
}

@end

@implementation LoginController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.title = @"Login";
	
	IView *view = [IView namedView:@"login"];
	[self addIViewRow:view];
	[self reload];
	
	_logo = (IImage *)[view getViewById:@"logo"];
	_submit = (IButton *)[view getViewById:@"submit"];
	_captcha_div = [view getViewById:@"captcha_div"];
	
	__weak typeof(self) me = self;
	[_submit addEvent:IEventClick handler:^(IEventType type, IView *view) {
		[me submit];
	}];
	// click on the user icon
	[_logo addEvent:IEventClick handler:^(IEventType type, IView *view) {
		[me.navigationController pushViewController:[[BuyController alloc] init] animated:YES];
	}];
}

- (void)submit{
	NSLog(@"%s", __func__);
	[_captcha_div toggle];
}

@end
