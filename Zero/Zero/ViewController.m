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

@interface ViewController ()<UIPickerViewDataSource,UIPickerViewDelegate, SelectorViewControllerDelegate>
{
    NSArray *_pickerData;
    NSString *airlineName;
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


// The number of columns of data
- (long)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (long)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _pickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _pickerData[row];
}

//- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
//{
//    airlineName=[_pickerData objectAtIndex:row];
//    _pickerView.hidden=YES;
//    _button.hidden=NO;
//    [_button setTitle:airlineName forState:UIControlStateNormal];
//    // This method is triggered whenever the user makes a change to the picker selection.
//    // The parameter named row and component represents what was selected.
//}
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    _selectorVC.delegate=self;
    if ([segue.identifier isEqualToString:@"selector"]) {
        self.selectorVC = segue.destinationViewController;
        _selectorVC.dataSource= @[@"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa", @"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa",@"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa", @"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa",@"Air France", @"Air India", @"AirAsia", @"Air China", @"American Airlines", @"Lufthansa"];
        _selectorVC.isAirlineSelection=YES;
    }else if ([segue.identifier isEqualToString:@"selectorFlight"])
    {
        self.selectorVC = segue.destinationViewController;
        _selectorVC.dataSource=@[@"4532", @"3543", @"2121", @"8564", @"4353", @"6756"];
    }
}
-(void)didAirlineSelected:(NSString *)airline andFlightNo:(NSString *)flightNo
{
    if (airline) {
        [_button setTitle:airlineName forState:UIControlStateNormal];
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

- (IBAction)didBtnClicked:(id)sender
{
    self.pickerView.hidden=NO;
    _button.hidden=YES;
}
- (IBAction)didFlightBtnClicked:(id)sender
{
    
}
@end
