//
//  Created by ideawu on 15-1-19.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "IView.h"

@interface ITableRow : IView

- (id)initWithNumberOfColumns:(NSUInteger)num;

- (void)column:(NSUInteger)column setText:(NSString *)text;
- (IView *)columnView:(NSUInteger)column;

@end
