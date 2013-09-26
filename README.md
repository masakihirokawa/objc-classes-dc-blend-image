DCBlendImage
===========================

Objective-Cで Photoshopのように画像を合成して表示する「DCBlendImage」クラスです。

ベース画像とブレンド画像、ブレンドモード、アルファ値、画像の寸法を指定して使用します。

##使用する画像

![元画像](http://lab.dolice.net/images/article/blend_mode/Asymmetry_640_1136.jpg "元画像")

![重ねて表示する画像](http://lab.dolice.net/images/article/blend_mode/blend_image.png "重ねて表示する画像")

![結果画像（ブレンドモード: スクリーン）](http://lab.dolice.net/images/article/blend_mode/result.jpg "結果画像（ブレンドモード: スクリーン）")

##使用方法

###合成された UIImageを取得し画面に追加

```objective-c
UIImage *compositeImage = [DCBlendImage blendImage:＜ベース画像の UIImage＞ blendImage:＜ブレンド画像の UIImage＞
                                         blendMode:kCGBlendModeScreen（ブレンドモード） blendAlpha:＜ブレンド画像のアルファ値＞
                                              rect:＜画像のレクタングル＞];
UIImageView *compositeImageView = [[UIImageView alloc] initWithImage:compositeImage];
[self.view addSubview:compositeImageView];
```

###合成された UIImageViewを取得し画面に追加

```objective-c
UIImageView *compositeImageView = [DCBlendImage blendImageView:＜ベース画像の UIImage＞ blendImage:＜ブレンド画像の UIImage＞
                                                     blendMode:kCGBlendModeScreen（ブレンドモード） blendAlpha:＜ブレンド画像のアルファ値＞
                                              rect:＜画像のレクタングル＞];
[self.view addSubview:compositeImageView];
```

##ブレンドモードの種類

 CGBlendMode | 説明
:-----------|:-----------
kCGBlendModeMultiply|乗算
kCGBlendModeScreen|スクリーン
kCGBlendModeOverlay|オーバーレイ
kCGBlendModeDarken|比較（暗）
kCGBlendModeLighten|比較（明）
kCGBlendModeColorDodge|覆い焼きカラー
kCGBlendModeColorBurn|焼きこみカラー
kCGBlendModeSoftLight|ソフトライト
kCGBlendModeHardLight|ハードライト
kCGBlendModeDifference|差の絶対値
kCGBlendModeExclusion|除外
kCGBlendModeHue|色相
kCGBlendModeSaturation|彩度
kCGBlendModeColor|カラー
kCGBlendModeLuminosity|輝度
kCGBlendModeClear|透明色で描画
