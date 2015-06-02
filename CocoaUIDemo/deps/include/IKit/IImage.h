//
//  Created by ideawu on 15-1-13.
//  Copyright (c) 2015年 ideawu. All rights reserved.
//

#import "IView.h"

@interface IImage : IView

+ (IImage *)imageNamed:(NSString *)name;

@property (nonatomic) NSString *src;
@property (nonatomic) UIImage *image;

@end
