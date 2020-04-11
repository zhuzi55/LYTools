//
//  LYCustomBtn.m
//  20200209Demos
//
//  Created by LIHH on 2020/4/11.
//  Copyright © 2020 lyz. All rights reserved.
//

#import "LYCustomBtn.h"

@interface LYCustomBtn()

@property (nonatomic, assign) float wBtn;
@property (nonatomic, assign) float hBtn;
@property (nonatomic, assign) ImgPositon imgPosition;

@end

@implementation LYCustomBtn

-(instancetype)initWithFrame:(CGRect)frame ImgName:(NSString *)imgName Text:(NSString *)text ImgPosition:(ImgPositon)imgPosition{
    
    if (self = [super initWithFrame:frame]) {
        
        // 默认的一些属性值以及全局变量
        self.wBtn = frame.size.width;
        self.hBtn = frame.size.height;
        [self setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        self.titleLabel.font = [UIFont systemFontOfSize:14];
        self.imgCustomEdge = 5;
        self.textCustomEdge = 5;
        self.imgPosition = imgPosition;
        self.imgRatio = 1;
        
        // 设置图片和文字
        [self setImage:[UIImage imageNamed:imgName] forState:UIControlStateNormal];
        [self setTitle:text forState:UIControlStateNormal];
        
        // 如果是图片在左，则文字居左；图片在右，则文字居右；
        // 图片在上下则文字居中。
        if (imgPosition == ImgLeft) {
            self.titleLabel.textAlignment = NSTextAlignmentLeft;
        } else if (imgPosition == ImgRight){
            self.titleLabel.textAlignment = NSTextAlignmentRight;
        } else {
            self.titleLabel.textAlignment = NSTextAlignmentCenter;
        }
        
    }
    return self;
}

// 图片位置
-(CGRect)imageRectForContentRect:(CGRect)contentRect{
    
    float imgW;
    float imgH;
    
    if (self.imgPosition == ImgLeft) {
        
        imgH = self.hBtn-self.imgCustomEdge*2;
        imgW = imgH*self.imgRatio;
        return CGRectMake(self.wBtn/2-self.imgCustomEdge-imgW, self.imgCustomEdge, imgW, imgH);
        
    } else if (self.imgPosition == ImgRight){
        
        imgH = self.hBtn-self.imgCustomEdge*2;
        imgW = imgH*self.imgRatio;
        return CGRectMake(self.wBtn/2+self.imgCustomEdge, self.imgCustomEdge, imgW, imgH);
        
    } else if (self.imgPosition == ImgTop){
        
        imgW = self.wBtn-self.imgCustomEdge*2;
        imgH = imgW/self.imgRatio;
        return CGRectMake(self.imgCustomEdge, self.hBtn/2-self.imgCustomEdge-imgH, imgW, imgH);
        
    } else {
        
        imgW = self.wBtn-self.imgCustomEdge*2;
        imgH = imgW/self.imgRatio;
        return CGRectMake(self.imgCustomEdge, self.hBtn/2+self.imgCustomEdge, imgW, imgH);
        
    }
}

// 文字位置
-(CGRect)titleRectForContentRect:(CGRect)contentRect{
    if (self.imgPosition == ImgLeft) {
        
        return CGRectMake(self.wBtn/2+self.textCustomEdge, 0, self.wBtn/2, self.hBtn);
        
    } else if (self.imgPosition == ImgRight){
        
        return CGRectMake(0, 0, self.wBtn/2-self.textCustomEdge, self.hBtn);
        
    } else if (self.imgPosition == ImgTop){
        
        return CGRectMake(0, self.hBtn/2+self.textCustomEdge, self.wBtn, self.hBtn/2);
        
    } else {
        
        return CGRectMake(0, 0, self.wBtn, self.hBtn/2-self.textCustomEdge);
        
    }
}

// set方法赋值
-(void)setTextCustomColor:(UIColor *)textCustomColor{
    [self setTitleColor:textCustomColor forState:UIControlStateNormal];
}
-(void)setTextCustomFont:(UIFont *)textCustomFont{
    self.titleLabel.font = textCustomFont;
}


@end
