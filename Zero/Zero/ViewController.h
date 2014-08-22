//
//  ViewController.h
//  Zero
//
//  Created by Sarvex Jatasra on 22/08/2014.
//  Copyright (c) 2014 Fareportal. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ViewController : UIViewController
@property (nonatomic,strong)NSString *selectedValue;
@property (weak, nonatomic) IBOutlet UIPickerView *pickerView;

- (IBAction)didBtnClicked:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *button;
@property (weak, nonatomic) IBOutlet UIButton *flightBtn;
- (IBAction)didFlightBtnClicked:(id)sender;
@end


