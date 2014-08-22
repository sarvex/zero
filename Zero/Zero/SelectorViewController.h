//
//  SelectorViewController.h
//  Zero
//
//  Created by Sunil on 8/22/14.
//  Copyright (c) 2014 Fareportal. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ViewController;

@protocol SelectorViewControllerDelegate <NSObject>
-(void)didAirlineSelected:(NSString *)airline andFlightNo:(NSString *)flightNo;

@end

@interface SelectorViewController : UIViewController<UIPickerViewDelegate,UIPickerViewDataSource>
@property(nonatomic,assign)BOOL isAirlineSelection;
@property(nonatomic,weak) id<SelectorViewControllerDelegate> delegate;
@property (nonatomic,strong)NSString *selectedValue;
@property(nonatomic,strong)NSArray *dataSource;
@property(nonatomic,assign)ViewController *viewController;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;
- (IBAction)didDoneClicked:(id)sender;

@end
