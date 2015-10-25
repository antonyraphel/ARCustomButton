//
//  ViewController.m
//  ARCustomButton
//
//  Created by Antony Raphel on 25/10/15.
//  Copyright (c) 2015 Antony Raphel. All rights reserved.
//
// http://www.antonyraphel.in/ (en)

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController
@synthesize scrollViewController, lblText;

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    items = [[NSMutableArray alloc]initWithObjects:@"Home", @"About", @"Gallery", @"Contact",@"Exit", nil];
    img = [[NSMutableArray alloc]initWithObjects:@"ButtonSel.png",@"ButtonRound.png",@"ButtonSel.png",@"ButtonRound.png",@"ButtonSel.png", nil];
    
    CGFloat contentOffSet = 3;
    
    for (int i =0; i< items.count; i++) {
        
        CGRect buttonViewFrame;
        customButton = [UIButton buttonWithType:UIButtonTypeCustom];
        
        buttonViewFrame = CGRectMake(contentOffSet,0,74, 74); //Button View size
        [customButton setTitle:[items objectAtIndex:i] forState:UIControlStateNormal];
        [customButton setTitleColor:[UIColor blackColor] forState:UIControlStateNormal];
        customButton.contentVerticalAlignment = UIControlContentVerticalAlignmentCenter;
        customButton.contentHorizontalAlignment = UIControlContentHorizontalAlignmentCenter;
        customButton.font = [UIFont systemFontOfSize:16];
        [customButton addTarget:self action:@selector(buttonAction:) forControlEvents:UIControlEventTouchUpInside];
        customButton.frame = buttonViewFrame;
        customButton.tag = i;
        NSLog(@"Tag:%ld",(long)customButton.tag);
        
        [scrollViewController addSubview:customButton];
        contentOffSet += customButton.frame.size.width * 1;
        scrollViewController.contentSize = CGSizeMake(400,scrollViewController.frame.size.height); //Change the scrollView based on the requirement
        
        //For background image from array items
//        [customButton setBackgroundImage:[UIImage imageNamed:[img objectAtIndex:i]] forState:UIControlStateNormal]; //Setting up button background image
        
        //Or background color
        [customButton setBackgroundColor:[UIColor redColor]];
        customButton.layer.cornerRadius = (customButton.bounds.size.height/2); // this value vary as per your desire
        customButton.clipsToBounds = YES;
    }
}

- (void)buttonAction:(id)sender {
    
    NSLog(@"Text is:%@", [items objectAtIndex:[sender tag]]);
    lblText.text = [items objectAtIndex:[sender tag]];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
