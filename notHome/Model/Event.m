//
//  Event.m
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "Event.h"

@implementation Event

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"ID":@"id",
             @"title":@"title",
             @"slug":@"slug"
             };
}

@end
