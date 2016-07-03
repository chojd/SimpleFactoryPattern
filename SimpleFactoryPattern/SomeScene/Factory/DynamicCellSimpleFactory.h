//
//  DynamicCellSimpleFactory.h
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DynamicItem;
@interface DynamicCellSimpleFactory : NSObject

+ (Class)dynamicBaseCellClassWithDynamicItem:(DynamicItem *)item;
+ (float)dynamicCellHeightWithDynamicItem:(DynamicItem *)item;

@end
