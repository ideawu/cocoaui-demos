//
//  Created by ideawu on 15-1-4.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "IView.h"

@interface IInput : IView

+ (IInput *)textInput;
+ (IInput *)passwordInput;

@property (nonatomic, readonly) UITextField *textField;
@property (nonatomic) NSString *value;
@property (nonatomic) NSString *placeholder;

- (BOOL)isPasswordInput;
- (void)setIsPasswordInput:(BOOL)yesno;

@end
