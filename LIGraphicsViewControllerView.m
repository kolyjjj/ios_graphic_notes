//
//  LIGraphicsViewControllerView.m
//  Graphics
//
//  Created by koly on 12/7/12.
//  Copyright (c) 2012 koly. All rights reserved.
//

#import "LIGraphicsViewControllerView.h"

@implementation LIGraphicsViewControllerView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    
    //create the color
    UIColor *magentaColor = [UIColor colorWithRed:0.5f green:0.0f blue:0.5f alpha:0.8f];
    
    //set the color in the graphical context
    [magentaColor set];
    
    //load the font
    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold" size:40.0f];
    
    NSString *myString = @"Hello World!";
    
    //[myString drawAtPoint:CGPointMake(40, 180) withFont:helveticaBold];
    [myString drawInRect:CGRectMake(100, 120, 100, 200) withFont:helveticaBold];
    
    //get the color components
    CGColorRef colorRef = [magentaColor CGColor];
    const CGFloat *components = CGColorGetComponents(colorRef);
    NSInteger componentsCount = CGColorGetNumberOfComponents(colorRef);
    NSInteger counter = 0;
    for (counter = 0; counter < componentsCount; counter++) {
        NSLog(@"Component %lu = %.02f", (unsigned long)counter+1, components[counter]);
    }
    
}


@end
