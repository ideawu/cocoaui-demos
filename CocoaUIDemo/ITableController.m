//
//  ITableController.m
//  CocoaUIDemo
//
//  Created by ideawu on 15-7-16.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "ITableController.h"

// just like UITableCell
@interface ListItemView : IView
@end

@implementation ListItemView
-(id)init {
	self = [super init];
	{
		IView *sub = [[IView alloc] init];
		[sub.style set:@"float: center; valign: middle; width: 100; height: 50; background: #3cf;"];
		[self addSubview:sub];
	}
	[self.style set:@"height: 100; border-bottom: 1 solid #333;"];
	return self;
}
// get called when is about to show data
-(void)setData:(id)data {
	[super setData:data];
	NSString *s = (NSString *)data;
	if([s isEqual:@"on"]){
		// highlight with yellow color
		[self.style set:@"background: #ff3"];
	}else{
		// grey
		[self.style set:@"background: #eee"];
	}
}
@end



@interface ITableController ()

@end

@implementation ITableController

- (void)viewDidLoad {
    [super viewDidLoad];
	self.navigationItem.title = @"Test";

	[self registerViewClass:[ListItemView class] forTag:@"item"];
	
	// get data from network
	[self addDataRow:@"on" forTag:@"item"];
	[self addDataRow:@"on" forTag:@"item"];
	[self addDataRow:@"off" forTag:@"item"];
	[self addDataRow:@"on" forTag:@"item"];
	[self reload];
}

@end
