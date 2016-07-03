//
//  DynamicBaseCell.h
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import <UIKit/UIKit.h>

@class DynamicItem;
@interface DynamicBaseCell : UITableViewCell

@property (nonatomic, strong, readonly) DynamicItem *item;

- (void)reloadWithDynamicItem:(DynamicItem *)item __attribute__((objc_requires_super));
+ (CGFloat)heightWithDynamicItem:(DynamicItem *)item;

@end
