//
//  UITableView+RegisterCustomCell.m
//  Quiz 4 iOS
//
//  Created by Christian Deliens on 2/25/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "UITableView+RegisterCustomCell.h"

@implementation UITableView (RegisterCustomCell)
-(void) registerCustomCellWithName:(NSString *)name{
    UINib *nib = [UINib nibWithNibName:name bundle:nil];
    [self registerNib:nib forCellReuseIdentifier:name];
}
@end
