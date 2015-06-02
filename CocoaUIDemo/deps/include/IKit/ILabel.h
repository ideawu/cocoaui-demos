//
//  Created by ideawu on 15-1-4.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "IView.h"

@interface ILabel : IView

@property (nonatomic, readonly) UILabel *label;
@property (nonatomic) NSString *text;
@property (nonatomic) NSAttributedString *attributedText;

+ (ILabel *)labelWithText:(NSString *)text;

@end
