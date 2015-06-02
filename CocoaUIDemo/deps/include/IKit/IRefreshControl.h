//
//  Created by ideawu on 15-1-16.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//
#ifndef IKit_IRefreshControl_h
#define IKit_IRefreshControl_h

#import "IView.h"

@interface IRefreshControl : IView

@property (nonatomic, readonly) IView *indicatorView;
@property (nonatomic, readonly) IView *contentView;

- (void)setStateTextForNone:(NSString *)none maybe:(NSString *)maybe begin:(NSString *)begin;
- (void)setState:(IRefreshState)state;

@end

#endif
