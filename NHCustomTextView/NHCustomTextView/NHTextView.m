//
//  NHTextView.m
//  NHCustomTextView
//
//  Created by 张宁浩 on 16/4/7.
//  Copyright © 2016年 张宁浩. All rights reserved.
//

#import "NHTextView.h"

@interface NHTextView()<UITextViewDelegate>
@property (nonatomic, strong) UITextView * mainTextView;
@property (nonatomic, strong) UILabel * placeHolderLabel;
@property (nonatomic, strong) UILabel * numberLabel;
@end

@implementation NHTextView
-(instancetype)initWithFrame:(CGRect)frame {
    if ([super initWithFrame: frame]) {
        [self createViewWithFrame:frame];
    }
    return self;
}

#pragma mark - 创建视图
- (void) createViewWithFrame:(CGRect)frame{
    [self.mainTextView setFrame:CGRectMake(0, 0, frame.size.width, frame.size.height)];
    [self addSubview:self.mainTextView];

    [self.placeHolderLabel setFrame:CGRectMake(5, 7, frame.size.width - 10, frame.size.height - 10)];
    [self addSubview:self.placeHolderLabel];

}

-(void)endInput {
    [self.mainTextView resignFirstResponder];
}

#pragma mark - textViewDelegate
-(void)textViewDidChange:(UITextView *)textView {
    [_placeHolderLabel setHidden:textView.text.length];
    if (self.delegate && [self.delegate respondsToSelector:@selector(textViewTextDidChangeText:)]) {
        [self.delegate textViewTextDidChangeText:textView.text];
    }
}

-(void)textViewDidBeginEditing:(UITextView *)textView {
    if (self.delegate && [self.delegate respondsToSelector:@selector(textViewTextDidBeginInput)]) {
        [self.delegate textViewTextDidBeginInput];
    }
}

-(void)textViewDidEndEditing:(UITextView *)textView {
    if (self.delegate && [self.delegate respondsToSelector:@selector(textViewTextDidEndInput)]) {
        [self.delegate textViewTextDidEndInput];
    }
}



#pragma mark - get Method
-(UITextView *)mainTextView {
    if (!_mainTextView) {
        _mainTextView = [[UITextView alloc] init];
        [_mainTextView setBackgroundColor:[UIColor whiteColor]];
        [_mainTextView setFont:[UIFont systemFontOfSize:15]];
        [_mainTextView setDelegate:self];
    }
    return _mainTextView;
}

-(UILabel *)placeHolderLabel {
    if (!_placeHolderLabel) {
        _placeHolderLabel = [[UILabel alloc] init];
        [_placeHolderLabel setFont:[UIFont systemFontOfSize:15]];
        [_placeHolderLabel setText:@""];
        [_placeHolderLabel setTextColor:[UIColor lightGrayColor]];
        [_placeHolderLabel setNumberOfLines:0];
    }
    return _placeHolderLabel;
}

#pragma mark - set Method
-(void)setTextViewBackgroundColor:(UIColor *)textViewBackgroundColor {
    if (textViewBackgroundColor) {
        _textViewBackgroundColor = textViewBackgroundColor;
        [_mainTextView setBackgroundColor:_textViewBackgroundColor];
    }
}

-(void)setMainTextViewFont:(UIFont *)mainTextViewFont {
    if (mainTextViewFont) {
        _mainTextViewFont = mainTextViewFont;
        [_mainTextView setFont:_mainTextViewFont];
    }
}

-(void)setMainTextViewStr:(NSString *)mainTextViewStr {
    if (mainTextViewStr) {
        _mainTextViewStr = mainTextViewStr;
        [_placeHolderLabel setHidden:_mainTextViewStr.length];
        [_mainTextView setText:_mainTextViewStr];
    }
}


-(void)setPlaceHolderStr:(NSString *)placeHolderStr {
    if (placeHolderStr) {
        _placeHolderStr = placeHolderStr;
        [_placeHolderLabel setText:_placeHolderStr];
        [_placeHolderLabel sizeToFit];
    }
}

-(void)setPlaceHolderFont:(UIFont *)placeHolderFont {
    if (placeHolderFont) {
        _placeHolderFont = placeHolderFont;
        [_placeHolderLabel setFont:_placeHolderFont];
    }
}

-(void)setPlaceHolderColor:(UIColor *)placeHolderColor {
    if (placeHolderColor) {
        _placeHolderColor = placeHolderColor;
        [_placeHolderLabel setTextColor:_placeHolderColor];
    }
}


@end
