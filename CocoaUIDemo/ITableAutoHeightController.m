//
//  ITableAutoHeightController.m
//  CocoaUIDemo
//
//  Created by ideawu on 15-7-16.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "ITableAutoHeightController.h"


// just like UITableCell
@interface ListItemView3 : IView
@property ILabel *label;
@end

@implementation ListItemView3
-(id)init {
	self = [super init];
	_label = [[ILabel alloc] init];
	[self addSubview:_label style:@"text-align: center; width: 100%; margin: 8 0;"];
	[self.style set:@"border-bottom: 1 solid #ccc;"];
	return self;
}
// get called when is about to show data
-(void)setData:(id)data {
	[super setData:data];
	NSString *s = (NSString *)data;
	_label.text = s;
}
@end


@interface ITableAutoHeightController ()

@end

@implementation ITableAutoHeightController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.title = @"ITableAutoHeight";
	
	[self registerViewClass:[ListItemView3 class] forTag:@"item"];
	
	// get data from network
	[self addDataRow:@"a" forTag:@"item"];
	[self addDataRow:@"a\nb\nc\nd" forTag:@"item"];
	[self addDataRow:@"a\nb" forTag:@"item"];
	[self addDataRow:@"你好" forTag:@"item"];
	[self reload];
}

@end
