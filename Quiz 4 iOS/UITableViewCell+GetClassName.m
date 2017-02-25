//
//  UITableViewCell+GetClassName.m
//  Quiz 4 iOS
//
//  Created by Christian Deliens on 2/25/17.
//  Copyright © 2017 Christian Deliens. All rights reserved.
//

#import "UITableViewCell+GetClassName.h"

@implementation UITableViewCell (GetClassName)
+(NSString *)getClassName
{
    return NSStringFromClass(self);
}
@end
