//
//  ViewController.h
//  ARCustomButton
//
//  Created by Antony Raphel on 25/10/15.
//  Copyright (c) 2015 Antony Raphel. All rights reserved.
//
// http://www.antonyraphel.in/ (en)

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController
{
    NSMutableArray *items;
    NSMutableArray *img;
    UIButton *customButton;
}
@property (weak, nonatomic) IBOutlet UIScrollView *scrollViewController;
@property (strong, nonatomic) IBOutlet UILabel *lblText;


@end

