//
//  DCBlendImage.h
//
//  Created by Masaki Hirokawa on 2013/09/09.
//  Copyright (c) 2013 Masaki Hirokawa. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DCBlendImage : UIImage {
    UIImage     *baseImage_;
    UIImage     *blendImage_;
    CGBlendMode blendMode_;
    CGFloat     blendAlpha_;
}

@end
