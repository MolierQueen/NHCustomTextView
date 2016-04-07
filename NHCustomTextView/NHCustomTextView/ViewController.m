//
//  ViewController.m
//  NHCustomTextView
//
//  Created by 张宁浩 on 16/4/7.
//  Copyright © 2016年 张宁浩. All rights reserved.
//

#import "ViewController.h"
#import "NHTextView.h"

@interface ViewController () <NHTextViewDelegate>
@property (nonatomic, strong) NHTextView * nh;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self.view setBackgroundColor:[UIColor grayColor]];
    _nh = [[NHTextView alloc] initWithFrame:CGRectMake(10, 100, 300, 100)];
    [_nh setDelegate:self];
    _nh.placeHolderStr = @"请输入你想要的文字";
    [self.view addSubview:_nh];
}

-(void)textViewTextDidChangeText:(NSString *)text {
    NSLog(@"我得到 ==== %@", text);
}

-(void)textViewTextDidBeginInput {
   NSLog(@"我开始输入 ");
}

-(void)textViewTextDidEndInput {
    NSLog(@"我结束输入");
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
