//
//  ViewController.m
//  JKAutolayoutReadyScrollView
//
//  Created by Jayesh Kawli Backup on 7/17/15.
//  Copyright (c) 2015 Jayesh Kawli Backup. All rights reserved.
//

#import "ViewController.h"
#import "ScrollViewAutolayoutCreator.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    ScrollViewAutolayoutCreator* autoLayoutScrolView = [[ScrollViewAutolayoutCreator alloc] initWithSuperView:self.view];
    UITextField* textF = [UITextField new];
    textF.translatesAutoresizingMaskIntoConstraints = NO;
    textF.borderStyle = UITextBorderStyleBezel;
    textF.text = @"Autolayout Equipped Scrollview - Created by Jayesh Kawli";
    textF.textAlignment = NSTextAlignmentCenter;
    [autoLayoutScrolView.contentView addSubview:textF];
    
    UILabel* lab = [UILabel new];
    lab.translatesAutoresizingMaskIntoConstraints = NO;
    lab.text = @"Easily integrable into any app. No hassle to deal with ScrollView, contentView and ugly constraints to make scroll view work with the Auto layouts";
    lab.textAlignment = NSTextAlignmentCenter;
    lab.numberOfLines = 0;
    [autoLayoutScrolView.contentView addSubview:lab];
    
    NSDictionary* views = NSDictionaryOfVariableBindings(textF, lab);
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[textF]-10-|" options:kNilOptions metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:|-500-[textF]" options:kNilOptions metrics:nil views:views]];
    
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"H:|-10-[lab]-10-|" options:kNilOptions metrics:nil views:views]];
    [self.view addConstraints:[NSLayoutConstraint constraintsWithVisualFormat:@"V:[textF]-50-[lab]" options:kNilOptions metrics:nil views:views]];
    
    [autoLayoutScrolView addBottomSpaceConstraintToLastView:lab withBottomPadding:100];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
