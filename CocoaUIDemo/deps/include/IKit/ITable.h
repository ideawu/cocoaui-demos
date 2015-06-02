//
//  Created by ideawu on 15-2-4.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//
#ifndef IKit_ITable_h
#define IKit_ITable_h

#import <UIKit/UIKit.h>
#import "IView.h"

@class IPullRefresh;
@class IRefreshControl;

@interface ITable : UIViewController

@property (nonatomic, readonly) IPullRefresh *pullRefresh;
@property (nonatomic) IRefreshControl *headerRefreshControl;
@property (nonatomic) IRefreshControl *footerRefreshControl;

@property (nonatomic) IView *headerView;
@property (nonatomic) IView *footerView;

- (void)clear;
- (void)reload;

- (void)addIViewRow:(IView *)view;
- (void)addIViewRow:(IView *)view defaultHeight:(CGFloat)height;
- (void)addDataRow:(id)data forTag:(NSString *)tag;
- (void)addDataRow:(id)data forTag:(NSString *)tag defaultHeight:(CGFloat)height;
- (void)addSeparator:(NSString *)css;
- (void)addSeparator:(NSString *)css height:(CGFloat)height;

- (void)registerViewClass:(Class)ivClass forTag:(NSString *)tag;

- (void)onHighlight:(IView *)view;
- (void)onUnhighlight:(IView *)view;
- (void)onClick:(IView *)view;

- (void)onRefresh:(IRefreshControl *)refreshControl state:(IRefreshState)state;
/**
 * Must call this method in onRefresh() when state is IRefreshBegin
 */
- (void)endRefresh:(IRefreshControl *)refreshControl;

@end

#endif
