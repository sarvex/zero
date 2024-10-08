//
//  SelectorViewController.m
//  Zero
//
//  Created by Sunil on 8/22/14.
//  Copyright (c) 2014 Fareportal. All rights reserved.
//

#import "SelectorViewController.h"
#import "ViewController.h"

@interface SelectorViewController ()
{
    NSString *selectedAirlines;
    NSString *selectedFlight;
}
@end

@implementation SelectorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    _picker.delegate=self;
    _picker.dataSource=self;
    // Do any additional setup after loading the view.
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
    return _dataSource.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _dataSource[row];
}

- (void)pickerView:(UIPickerView *)pickerView didSelectRow:(NSInteger)row inComponent:(NSInteger)component
{
    if (_isAirlineSelection) {
        selectedAirlines=_dataSource[row];
    }
    else
    {
        selectedFlight=_dataSource[row];

    }
}


- (IBAction)didDoneClicked:(id)sender {
    
    [_delegate didAirlineSelected:selectedAirlines andFlightNo:selectedFlight];
    [self dismissViewControllerAnimated:YES completion:nil];
}
@end
