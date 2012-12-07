//
//  LIViewController.m
//  Graphics
//
//  Created by koly on 12/7/12.
//  Copyright (c) 2012 koly. All rights reserved.
//

#import "LIViewController.h"

@interface LIViewController ()

@end

@implementation LIViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
//    [self emurateFonts];
    UIFont *helveticaBold = [UIFont fontWithName:@"HelveticaNeue-Bold" size:14.0f];
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)emurateFonts
{
    for (NSString *fontFamily in [UIFont familyNames]) {
        NSLog(@"%@", fontFamily);
        for (NSString *fontName in [UIFont fontNamesForFamilyName:fontFamily]) {
            NSLog(@"%@", fontName);
        }
    }
}

@end
