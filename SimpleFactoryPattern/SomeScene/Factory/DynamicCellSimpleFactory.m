//
//  DynamicCellSimpleFactory.m
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import "DynamicCellSimpleFactory.h"

#import "DynamicCellHeader.h"

#import "DynamicItem.h"


@implementation DynamicCellSimpleFactory

+ (Class)dynamicBaseCellClassWithDynamicItem:(DynamicItem *)item {
    NSParameterAssert(item);
    
    DynamicItemType type = item.type;
    
    NSAssert(type >= kDynamicItemTypeOne && type <= kDynamicItemTypeFive, @"DynamicItemType is unavailable");
    
    switch (type) {
        case kDynamicItemTypeUnknow:
        {
            return [DynamicBaseCell class];
        }
            break;
        case kDynamicItemTypeOne:
        {
            return [DynamicOneCell class];
        }
            break;
        case kDynamicItemTypeTwo:
        {
            return [DynamicTwoCell class];
        }
            break;
        case kDynamicItemTypeThree:
        {
            return [DynamicThreeCell class];
        }
            break;
        case kDynamicItemTypeFour:
        {
            return [DynamicFourCell class];
        }
            break;
        case kDynamicItemTypeFive:
        {
            return [DynamicFiveCell class];
        }
            break;
    }
}

+ (float)dynamicCellHeightWithDynamicItem:(DynamicItem *)item {
    NSParameterAssert(item);
    
    Class cellClass = [self dynamicBaseCellClassWithDynamicItem:item];
    NSParameterAssert(cellClass);
    
    float height = [cellClass heightWithDynamicItem:item];
    return height;
}

@end
