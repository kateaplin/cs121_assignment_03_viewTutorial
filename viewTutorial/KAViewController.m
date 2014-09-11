//
//  KAViewController.m
//  viewTutorial
//
//  Created by Kathryn Aplin on 9/10/14.
//  Copyright (c) 2014 Kathryn Aplin. All rights reserved.
//

#import "KAGrid.h"
#import "KAViewController.h"

@interface KAViewController () {
    UIButton *_button;
    UIView *_gridView;
}

@end

@implementation KAViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    
    self.view.backgroundColor = [UIColor whiteColor];
    
    // Create grid frame.
    CGRect frame  = self.view.frame;
    CGFloat x = CGRectGetWidth(frame)*.1;
    CGFloat y = CGRectGetHeight(frame)*.1;
    CGFloat size = MIN(CGRectGetWidth(frame), CGRectGetHeight(frame))*.80;
    
    CGRect gridFrame = CGRectMake(x, y, size, size);
    
    // Create grid view.
    _gridView = [[KAGrid alloc] initWithFrame:gridFrame];
    _gridView.backgroundColor = [UIColor blackColor];
    [self.view addSubview:_gridView];
    
    // Create button.
    CGFloat buttonSize = size/5.0;
    CGRect buttonFrame = CGRectMake(0, 0, buttonSize, buttonSize);
    _button = [[UIButton alloc] initWithFrame:buttonFrame];
    _button.backgroundColor = [UIColor redColor];
    
    // Configure button text.
    [_button setTitle:@"Hit me" forState:UIControlStateNormal];
    [_button setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
    
    // Makes the button 'glow' when touched, as a highlighting effect.
    // We do not change the color since we are using a normal UI button,
    // but not providing an image as the background. If there were an image,
    // it would darken automatically. If we wanted to change the background
    // color, we would need to override methods of the UIButton class.
    _button.showsTouchWhenHighlighted = YES;
    
    [_gridView addSubview:_button];
    
    // Create target for button.
    [_button addTarget:self action:@selector(buttonPressed:)
      forControlEvents:UIControlEventTouchUpInside];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)buttonPressed:(id)sender
{
    NSLog(@"You pressed the button!");
}

@end
