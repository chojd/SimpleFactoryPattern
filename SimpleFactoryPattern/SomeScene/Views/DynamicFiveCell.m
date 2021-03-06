//
//  DynamicFiveCell.m
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import "DynamicFiveCell.h"

@implementation DynamicFiveCell

- (void)reloadWithDynamicItem:(DynamicItem *)item {
    [super reloadWithDynamicItem:item];
    
    CGFloat value = 1.f / 5 * 5;
    self.contentView.backgroundColor = [UIColor colorWithRed:value green:value blue:value alpha:1.f];
}

+ (CGFloat)heightWithDynamicItem:(DynamicItem *)item {
    return 100;
}

@end
