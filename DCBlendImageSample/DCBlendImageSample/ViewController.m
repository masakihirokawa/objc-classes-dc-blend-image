//
//  ViewController.m
//  DCBlendImageSample
//
//  Created by 廣川政樹 on 2013/09/09.
//  Copyright (c) 2013年 Masaki Hirokawa. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];

    UIView *blendImage = [[DCBlendImage alloc] initWithImage:@"Asymmetry_640_1136.jpg" blendImage:@"blend_image.png" blendMode:kCGBlendModeScreen blendAlpha:0.5f];
    blendImage.center = self.view.center;
    blendImage.autoresizingMask = UIViewAutoresizingFlexibleTopMargin | UIViewAutoresizingFlexibleBottomMargin;
    [self.view addSubview:blendImage];
    
    [blendImage setNeedsDisplay];
}

@end
