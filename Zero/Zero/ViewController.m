//
//  ViewController.m
//  Zero
//
//  Created by Sarvex Jatasra on 22/08/2014.
//  Copyright (c) 2014 Fareportal. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"

@interface ViewController ()

@end

@implementation ViewController
            
- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (UIStoryboard *)getStoryBoard
{
    UIStoryboard *mystoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return mystoryboard;
}

@end
