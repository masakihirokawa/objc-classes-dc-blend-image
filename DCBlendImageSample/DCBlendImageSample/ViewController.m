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
    
    //合成された UIImageを取得し画面に追加
    [self setCompositeImage];
    
    //合成された UIImageViewを取得し画面に追加
    //[self setCompositeImageView];
}

//合成された UIImageを取得し画面に追加
- (void)setCompositeImage
{
    UIImage *baseImage = [self getUIImageFromResources:BASE_IMG_NAME ext:BASE_IMG_EXT];
    UIImage *blendImage = [self getUIImageFromResources:BLEND_IMG_NAME ext:BLEND_IMG_EXT];
    UIImage *compositeImage = [DCBlendImage blendImage:baseImage blendImage:blendImage
                                             blendMode:kCGBlendModeScreen blendAlpha:BLEND_ALPHA
                                                  rect:IMG_RECT];
    UIImageView *compositeImageView = [[UIImageView alloc] initWithImage:compositeImage];
    [self.view addSubview:compositeImageView];
}

//合成された UIImageViewを取得し画面に追加
- (void)setCompositeImageView
{
    UIImage *baseImage = [self getUIImageFromResources:BASE_IMG_NAME ext:BASE_IMG_EXT];
    UIImage *blendImage = [self getUIImageFromResources:BLEND_IMG_NAME ext:BLEND_IMG_EXT];
    UIImageView *compositeImageView = [DCBlendImage blendImageView:baseImage blendImage:blendImage
                                                         blendMode:kCGBlendModeScreen blendAlpha:BLEND_ALPHA
                                                              rect:IMG_RECT];
    [self.view addSubview:compositeImageView];
}

//画像ファイル取得
- (UIImage *)getUIImageFromResources:(NSString*)fileName ext:(NSString*)ext
{
    NSString *path = [[NSBundle mainBundle] pathForResource:fileName ofType:ext];
    UIImage *img = [[UIImage alloc] initWithContentsOfFile:path];
    return (img);
}

@end
