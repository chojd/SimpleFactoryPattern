//
//  DynamicBaseCell.m
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import "DynamicBaseCell.h"

@implementation DynamicBaseCell

- (void)awakeFromNib {
    [super awakeFromNib];
    self.textLabel.backgroundColor = [UIColor whiteColor];
}

- (void)layoutSubviews {
    [super layoutSubviews];
    
    [self.textLabel sizeToFit];
    self.textLabel.center = CGPointMake(CGRectGetMidX(self.textLabel.bounds) + 8.f, CGRectGetMidY(self.contentView.bounds));
}

- (void)reloadWithDynamicItem:(DynamicItem *)item {
    NSParameterAssert(item);
    
    self.textLabel.text = NSStringFromClass([self class]);
    
}

+ (CGFloat)heightWithDynamicItem:(DynamicItem *)item {
    return 0;
}

@end
