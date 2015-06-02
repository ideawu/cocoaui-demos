//
//  ThreeColumnController.m
//
//  1. 实现三等分
//  2. 实现拖动回弹
//
//  Created by ideawu on 15-4-15.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "ThreeColumnController.h"

@interface ThreeColumnController (){
	CGPoint first_pos;
	IView *pan;
}

@end

@implementation ThreeColumnController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.title = @"Three Column";
	
	IView *view = [IView namedView:@"three-cols"];
	[self addIViewRow:view];
	[self reload];

	pan = [view getViewById:@"pan"];

	UIPanGestureRecognizer *gest = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(handlePan:)];
	[pan addGestureRecognizer:gest];
}

- (void)handlePan:(UIGestureRecognizer *)sender{
	CGPoint pos = [(UIPanGestureRecognizer*)sender translationInView:self.view];
	if(sender.state == UIGestureRecognizerStateBegan){
		first_pos = pan.center;
	}
	if(sender.state == UIGestureRecognizerStateChanged){
		pan.center = CGPointMake(first_pos.x + pos.x, first_pos.y + pos.y);
	}
	if(sender.state == UIGestureRecognizerStateEnded){
		[UIView animateWithDuration:0.3
							  delay:0
							options:UIViewAnimationOptionCurveEaseInOut
						 animations:^{
							 pan.center = first_pos;
						 }
						 completion:nil];
	}
}

@end
