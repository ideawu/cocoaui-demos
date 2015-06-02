//
//  Created by ideawu on 15-1-4.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "IView.h"

@interface IButton : IView

@property (nonatomic, readonly) UIButton *button;
@property (nonatomic) NSString *text;

+ (IButton *)buttonWithText:(NSString *)text;

@end
