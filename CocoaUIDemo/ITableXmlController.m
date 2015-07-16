//
//  ITableXmlController.m
//  CocoaUIDemo
//
//  Created by ideawu on 15-7-16.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "ITableXmlController.h"


// just like UITableCell
@interface ListItemView2 : IView
@end

@implementation ListItemView2
-(id)init {
	self = [super init];
	IView *view = [IView namedView:@"buy"];
	[self addSubview:view];
	[self.style set:@"border-bottom: 1 solid #ccc;"];
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



@interface ITableXmlController ()

@end

@implementation ITableXmlController

- (void)viewDidLoad {
	[super viewDidLoad];
	self.navigationItem.title = @"TestXml";
	
	[self registerViewClass:[ListItemView2 class] forTag:@"item"];
	
	// get data from network
	[self addDataRow:@"off" forTag:@"item"];
	[self addDataRow:@"off" forTag:@"item"];
	[self addDataRow:@"on" forTag:@"item"];
	[self addDataRow:@"off" forTag:@"item"];
	[self addDataRow:@"off" forTag:@"item"];
	[self addDataRow:@"off" forTag:@"item"];
	[self reload];
}

@end
