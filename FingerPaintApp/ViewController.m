//
//  ViewController.m
//  FingerPaintApp
//
//  Created by Susan Justice on 2016-05-14.
//  Copyright © 2016 Amer Justice. All rights reserved.
//

#import "ViewController.h"
#import "DrawingView.h"

@interface ViewController ()

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    DrawingView *dview = (DrawingView*)self.view;
    dview.p1 = CGPointZero;
    dview.p2 = CGPointZero; 
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
