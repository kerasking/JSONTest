//
//  ViewController.m
//  MJTest
//
//  Created by 刘凡 on 15/1/22.
//  Copyright (c) 2015年 joyios. All rights reserved.
//

#import "ViewController.h"
#import "MJExtension.h"
#import "GitHubRepoModel.h"
#import "ReposModel.h"
#import "User.h"
#import "Dog.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

#pragma clang diagnostic ignored "-Wunused-value"

#define TEST_COUNT 100
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    NSData *data = [NSData dataWithContentsOfURL:[[NSBundle mainBundle] URLForResource:@"github-iphone.json" withExtension:nil]];
    NSDictionary *dict = [NSJSONSerialization JSONObjectWithData:data options:kNilOptions error:nil];
    
    NSLog(@"----开始解析----");
    CFAbsoluteTime start = CFAbsoluteTimeGetCurrent();
    for (int i = 0; i < TEST_COUNT; ++i) {
        [ReposModel objectWithKeyValues:dict];
    }
    CFAbsoluteTime end = CFAbsoluteTimeGetCurrent();
    NSLog(@"%f", end - start);
}

@end
