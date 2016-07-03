//
//  DynamicItem.m
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import "DynamicItem.h"

@implementation DynamicItem

@end


@implementation DynamicItem (Create)

+ (NSArray<DynamicItem *> *)randomCreareDynamic {
    
    NSMutableArray *itemAryM = [NSMutableArray arrayWithCapacity:20];
    for (int idx = 0; idx < 20; idx++) {
        DynamicItem *item = [[DynamicItem alloc] init];
        item.type = arc4random() % 5 + 1;
        [itemAryM addObject:item];
    }
    
    return itemAryM;
}

@end