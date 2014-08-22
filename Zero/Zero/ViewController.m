//
//  ViewController.m
//  Zero
//
//  Created by Sarvex Jatasra on 22/08/2014.
//  Copyright (c) 2014 Fareportal. All rights reserved.
//

#import "ViewController.h"
#import "SecondViewController.h"
#import "SelectorViewController.h"

@interface ViewController ()<SelectorViewControllerDelegate>
{

}
@property(nonatomic,strong) SelectorViewController *selectorVC;
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

- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.identifier isEqualToString:@"selector"]) {
        self.selectorVC = segue.destinationViewController;
        _selectorVC.dataSource= @[@"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa", @"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa",@"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa", @"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa",@"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa"];
        _selectorVC.isAirlineSelection=YES;
    }else if ([segue.identifier isEqualToString:@"selectorFlight"])
    {
        self.selectorVC = segue.destinationViewController;
        _selectorVC.dataSource=@[@"4532", @"3543", @"2121", @"8564", @"4353", @"6756"];
    }
    _selectorVC.delegate=self;

}
-(void)didAirlineSelected:(NSString *)airline andFlightNo:(NSString *)flightNo
{
    if (airline) {
        [_button setTitle:airline forState:UIControlStateNormal];
    }
    else
    {
        [_flightBtn setTitle:flightNo forState:UIControlStateNormal];

    }
}
- (UIStoryboard *)getStoryBoard
{
    UIStoryboard *mystoryboard = [UIStoryboard storyboardWithName:@"Main" bundle:nil];
    return mystoryboard;
}

@end
