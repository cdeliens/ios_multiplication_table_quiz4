//
//  NumbersViewController.m
//  Quiz 4 iOS
//
//  Created by Christian Deliens on 2/25/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "NumbersViewController.h"
#import "UITableViewCell+GetClassName.h"
#import "NumberTableViewCell.h"
#import "UITableView+RegisterCustomCell.h"

@interface NumbersViewController () <UITableViewDelegate, UITableViewDataSource>
@property (strong, nonatomic) IBOutlet UITableView *tableView;
@property (strong, nonatomic) IBOutlet UITextField *numberTextField;
@property (strong, nonatomic) NSMutableArray *results;

- (IBAction)calculateMultiplicationTable:(id)sender;

@end

@implementation NumbersViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self.tableView registerCustomCellWithName:[NumberTableViewCell getClassName]];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.results.count;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NumberTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:[NumberTableViewCell getClassName]];
    [cell setupCellWithResult:[self.results objectAtIndex:indexPath.row]];
    
    
    return cell;
}

- (IBAction)calculateMultiplicationTable:(id)sender {
    NSString *numberToCalculate = self.numberTextField.text;
    self.results = [NSMutableArray new];
    
    for (int i=0; i <= 10; i++) {
        int calculationResult = [numberToCalculate intValue] * i;
        [self.results addObject:[NSString stringWithFormat:@"%@ X %i = %i", numberToCalculate, i, calculationResult]];
    }
    [self.tableView reloadData];
    [self.view endEditing:YES];
}
@end
