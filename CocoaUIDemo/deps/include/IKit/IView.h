//
//  Created by ideawu on 14-12-24.
//  Copyright (c) 2014年 test. All rights reserved.
//
#ifndef IKit_IView_h
#define IKit_IView_h

#import <UIKit/UIKit.h>
#import "IStyle.h"

typedef enum{
	IEventHighlight    = 1<<0,
	IEventUnhighlight  = 1<<1,
	IEventClick        = 1<<2,
	IEventTap          = IEventClick,
	IEventChange       = 1<<3,
	IEventReturn       = 1<<4,
}IEventType;

typedef enum{
	IRefreshNone,
	IRefreshMaybe,
	IRefreshBegin,
}IRefreshState;


@interface IView : UIView

@property (nonatomic, readonly) IStyle *style;
@property (nonatomic) id data;

+ (IView *)viewWithUIView:(UIView *)view;
+ (IView *)viewWithUIView:(UIView *)view style:(NSString *)css;

+ (IView *)namedView:(NSString *)name;
+ (IView *)viewFromXml:(NSString *)xml;
// only available when init with xml or file
- (IView *)getViewById:(NSString *)vid;

/**
 * Add a view(instance of UIView or IView subclass) into subviews list,
 * apply style on the added view.
 */
- (void)addSubview:(UIView *)view style:(NSString *)css;
/**
 * This method will traverse up the view hierarchy to find and return
 * the first UIViewController, if not any found, it will return nil.
 */
- (UIViewController *)viewController;


- (void)show;
- (void)hide;
- (void)toggle;

- (void)bindEvent:(IEventType)event handler:(void (^)(IEventType event, IView *view))handler;
/**
 * event can be combined by | operator.
 */
- (void)addEvent:(IEventType)event handler:(void (^)(IEventType event, IView *view))handler;
/**
 * event can not be combined.
 */
- (BOOL)fireEvent:(IEventType)event;

@end

#endif
