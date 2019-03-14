//
//  UIView+EasyIndicator.m
//  EasyIndicatorDemo
//
//  Created by Sen on 2019/3/13.
//  Copyright © 2019年 Sen. All rights reserved.
//

#import "UIView+EasyIndicator.h"

const NSInteger indicatorTag = 999;

@implementation UIView (EasyIndicator)

- (void)showIndicator
{
    [self stopIndicator];
    self.userInteractionEnabled = NO;
            
    UIActivityIndicatorView* av = [[UIActivityIndicatorView alloc] initWithFrame:self.bounds];
    av.tag = indicatorTag;
    av.color = [self autoIndicatorColor];
    [self addSubview:av];
    
    [av startAnimating];
}

- (void)stopIndicator
{
    self.userInteractionEnabled = YES;
    
    UIActivityIndicatorView* av = [self viewWithTag:indicatorTag];
    [av stopAnimating];
    [av removeFromSuperview];
}

- (UIColor*)autoIndicatorColor
{
    CGFloat rr = 0.0;
    CGFloat gg = 0.0;
    CGFloat bb = 0.0;
    CGFloat alpha = 0.0;
    
    UIColor* color = self.backgroundColor;
    if (!color || color == [UIColor clearColor])
    {
        color = [UIColor whiteColor];
    }
    [color getRed:&rr green:&gg blue:&bb alpha:&alpha];
        
    //取反色 eg: black -> white 
    UIColor* newColor = [UIColor colorWithRed:1-rr green:1-gg blue:1-bb alpha:1];
    
    return newColor;
}

@end
