//
//  DCBlendImage.m
//
//  Created by Masaki Hirokawa on 2013/09/09.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import "DCBlendImage.h"

@implementation DCBlendImage

@synthesize blendMode = blendMode_;

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

- (void)setBlendMode:(CGBlendMode)blendMode
{
    blendMode_ = blendMode;
}

- (void)drawRect:(CGRect)rect
{
    [baseImage_ drawInRect:rect];
    [blendImage_ drawInRect:rect blendMode:blendMode_ alpha:blendAlpha_];
}

/*
 switch (blendMode_.blendMode) {
 case kCGBlendModeMultiply:        blendModeLabel_.text = @"kCGBlendModeMultiply"; break;
 case kCGBlendModeScreen:          blendModeLabel_.text = @"kCGBlendModeScreen"; break;
 case kCGBlendModeOverlay:         blendModeLabel_.text = @"kCGBlendModeOverlay"; break;
 case kCGBlendModeDarken:          blendModeLabel_.text = @"kCGBlendModeDarken"; break;
 case kCGBlendModeLighten:         blendModeLabel_.text = @"kCGBlendModeLighten"; break;
 case kCGBlendModeColorDodge:      blendModeLabel_.text = @"kCGBlendModeColorDodge"; break;
 case kCGBlendModeColorBurn:       blendModeLabel_.text = @"kCGBlendModeColorBurn"; break;
 case kCGBlendModeSoftLight:       blendModeLabel_.text = @"kCGBlendModeSoftLight"; break;
 case kCGBlendModeHardLight:       blendModeLabel_.text = @"kCGBlendModeHardLight"; break;
 case kCGBlendModeDifference:      blendModeLabel_.text = @"kCGBlendModeDifference"; break;
 case kCGBlendModeExclusion:       blendModeLabel_.text = @"kCGBlendModeExclusion"; break;
 case kCGBlendModeHue:             blendModeLabel_.text = @"kCGBlendModeHue"; break;
 case kCGBlendModeSaturation:      blendModeLabel_.text = @"kCGBlendModeSaturation"; break;
 case kCGBlendModeColor:           blendModeLabel_.text = @"kCGBlendModeColor"; break;
 case kCGBlendModeLuminosity:      blendModeLabel_.text = @"kCGBlendModeLuminosity"; break;
 case kCGBlendModeClear:           blendModeLabel_.text = @"kCGBlendModeClear"; break;
 case kCGBlendModeCopy:            blendModeLabel_.text = @"kCGBlendModeCopy"; break;
 case kCGBlendModeSourceIn:        blendModeLabel_.text = @"kCGBlendModeSourceIn"; break;
 case kCGBlendModeSourceOut:       blendModeLabel_.text = @"kCGBlendModeSourceOut"; break;
 case kCGBlendModeSourceAtop:      blendModeLabel_.text = @"kCGBlendModeSourceAtop"; break;
 case kCGBlendModeDestinationOver: blendModeLabel_.text = @"kCGBlendModeDestinationOver"; break;
 case kCGBlendModeDestinationIn:   blendModeLabel_.text = @"kCGBlendModeDestinationIn"; break;
 case kCGBlendModeDestinationOut:  blendModeLabel_.text = @"kCGBlendModeDestinationOut"; break;
 case kCGBlendModeDestinationAtop: blendModeLabel_.text = @"kCGBlendModeDestinationAtop"; break;
 case kCGBlendModeXOR:             blendModeLabel_.text = @"kCGBlendModeXOR"; break;
 case kCGBlendModePlusDarker:      blendModeLabel_.text = @"kCGBlendModePlusDarker"; break;
 case kCGBlendModePlusLighter:     blendModeLabel_.text = @"kCGBlendModePlusLighter"; break;
 default:                          blendModeLabel_.text = @"kCGBlendModeNormal"; break;
 */

//[blendMode_ setNeedsDisplay];


@end
