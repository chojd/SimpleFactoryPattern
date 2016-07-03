//
//  DynamicItem.h
//  SimpleFactoryPattern
//
//  Created by Jade Tsao on 7/3/16.
//  Copyright © 2016 OFashion. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM(NSUInteger, DynamicItemType){
    kDynamicItemTypeUnknow,
    kDynamicItemTypeOne,
    kDynamicItemTypeTwo,
    kDynamicItemTypeThree,
    kDynamicItemTypeFour,
    kDynamicItemTypeFive,
};

@interface DynamicItem : NSObject

@property (nonatomic, assign) DynamicItemType type;

@end


@interface DynamicItem (Create)

+ (NSArray<DynamicItem *> *)randomCreareDynamic;

@end