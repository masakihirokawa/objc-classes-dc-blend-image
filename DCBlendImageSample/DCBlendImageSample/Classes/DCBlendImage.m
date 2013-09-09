//
//  DCBlendImage.m
//
//  Created by Masaki Hirokawa on 2013/09/09.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCBlendImage.h"

@implementation DCBlendImage

- (id)initWithImage:baseImageName blendImage:(NSString *)blendImageName blendMode:(CGBlendMode)blendMode blendAlpha:(CGFloat)blendAlpha
{
    if (self = [super init]) {
        baseImage_ = [UIImage imageNamed:baseImageName];
        blendImage_ = [UIImage imageNamed:blendImageName];
        blendMode_ = blendMode;
        blendAlpha_ = blendAlpha;
    }
    return self;
}

- (void)setMode
{
    blendMode_ = kCGBlendModeNormal;
}

- (void)drawRect:(CGRect)rect
{
    [baseImage_ drawInRect:rect];
    [blendImage_ drawInRect:rect blendMode:blendMode_ alpha:blendAlpha_];
}

@end
