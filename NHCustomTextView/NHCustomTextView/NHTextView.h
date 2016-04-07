//
//  NHTextView.h
//  NHCustomTextView
//
//  Created by 张宁浩 on 16/4/7.
//  Copyright © 2016年 张宁浩. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol NHTextViewDelegate <NSObject>
/**
 *  监听输入框输入
 *
 *  @param text 输入的文字
 */
- (void)textViewTextDidChangeText:(NSString*)text;

/**
 *  开始输入
 */
- (void)textViewTextDidBeginInput;

/**
 *  结束输入
 */
- (void)textViewTextDidEndInput;

@end


@interface NHTextView : UIView
/**
 *  输入框的背景颜色
 */
@property(nonatomic,strong)UIColor * textViewBackgroundColor;

/**
 *  输入框文字的字体
 */
@property(nonatomic,strong)UIFont * mainTextViewFont;

/**
 *  输入框内容(默认没有)
 */
@property (nonatomic, copy)  NSString *mainTextViewStr;

/**
 *  placeHolder字体
 */
@property(nonatomic,strong)UIFont * placeHolderFont;

/**
 *  placeHolder颜色
 */
@property(nonatomic,strong)UIColor * placeHolderColor;

/**
 *  placeHolder内容
 */
@property(nonatomic,strong)NSString * placeHolderStr;

/**
 *  代理
 */
@property (nonatomic, assign)id<NHTextViewDelegate> delegate;

/**
 *  结束输入(取消第一响应者)
 */
- (void) endInput;
@end
