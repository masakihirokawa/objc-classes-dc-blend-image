//
//  DCBlendImage.h
//
//  Created by Masaki Hirokawa on 2013/09/09.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCBlendImage : UIView {
    UIImage     *baseImage_;
    UIImage     *blendImage_;
    CGBlendMode blendMode_;
    CGFloat     blendAlpha_;
}

#pragma mark method prototype
- (id)initWithImage:baseImageName blendImage:(NSString *)blendImageName blendMode:(CGBlendMode)blendMode blendAlpha:(CGFloat)blendAlpha;

@end
