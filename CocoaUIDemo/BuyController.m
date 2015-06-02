//
//  BuyController.m
//  CocoaUIDemo
//
//  Created by ideawu on 15-3-6.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "BuyController.h"

@interface BuyController ()

@end

@implementation BuyController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.title = @"Buy";
	
	IView *view = [IView namedView:@"buy"];
	[self addIViewRow:view];
	[self reload];
}

@end
