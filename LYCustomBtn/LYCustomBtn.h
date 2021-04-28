//
//  LYCustomBtn.h
//  20200209Demos
//
//  Created by LIHH on 2020/4/11.
//  Copyright © 2020 lyz. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef enum : NSUInteger {
    ImgLeft,  // 图片在左，文字在右
    ImgRight, // 图片在右，文字在左
    ImgTop,   // 图片在上，文字在下
    ImgBottom,// 图片在下，文字在上
} ImgPositon;

NS_ASSUME_NONNULL_BEGIN


//** dev分支测试
@interface LYCustomBtn : UIButton

// 自定义文字颜色，默认黑色
@property (nonatomic, strong) UIColor *textCustomColor;
// 自定义文字大小，默认14号字
@property (nonatomic, strong) UIFont *textCustomFont;
// 自定义图片周边间距，默认5
@property (nonatomic, assign) float imgCustomEdge;
// 自定义文字距中线距离，默认5
@property (nonatomic, assign) float textCustomEdge;
// 宽高比，默认1(图片宽/高)
@property (nonatomic, assign) float imgRatio;

// 按钮初始化，给宽高+图片名字+图片文字+图片的位置有左右上下
// 如果图片在左，图片右边与按钮中线边缘为5，文字从中线开始
// 如果图片在上，图片下边与按钮中线边缘为5，文字从中线开始
-(instancetype)initWithFrame:(CGRect)frame ImgName:(NSString *)imgName Text:(NSString *)text ImgPosition:(ImgPositon)imgPosition;



@end

NS_ASSUME_NONNULL_END
