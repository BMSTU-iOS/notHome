//
//  Place.m
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "Place.h"

@implementation Place

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"ID":@"id",
             @"siteURL":@"site_url",
             @"title":@"title",
             @"address":@"address",
             @"location":@"location",
             @"slug":@"slug",
             @"phone":@"phone",
             @"subWay":@"subway",
             @"hasParking":@"has_Parking_lot",
             @"isClosed":@"is_closed"
             };
}

+ (NSValueTransformer *)hasParkingJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

+ (NSValueTransformer *)isClosedJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLBooleanValueTransformerName];
}

+ (NSValueTransformer *)siteURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end
