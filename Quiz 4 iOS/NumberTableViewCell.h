//
//  NumberTableViewCell.h
//  Quiz 4 iOS
//
//  Created by Christian Deliens on 2/25/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface NumberTableViewCell : UITableViewCell
@property (strong, nonatomic) IBOutlet UILabel *resultLabel;
-(void)setupCellWithResult:(NSString *) result;
@end
