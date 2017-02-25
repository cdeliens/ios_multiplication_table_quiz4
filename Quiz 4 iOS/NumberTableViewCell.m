//
//  NumberTableViewCell.m
//  Quiz 4 iOS
//
//  Created by Christian Deliens on 2/25/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "NumberTableViewCell.h"

@implementation NumberTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

-(void)setupCellWithResult:(NSString *) result
{
    self.resultLabel.text = result;
}

@end
