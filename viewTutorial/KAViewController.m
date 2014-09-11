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
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
