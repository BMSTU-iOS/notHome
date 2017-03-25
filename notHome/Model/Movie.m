//
//  Movie.m
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "Movie.h"

@implementation MoviePoster

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"imageURL":@"image",
             @"source":@"source"
             };
}

+ (NSValueTransformer *)imageURLJSONTransformer {
    return [NSValueTransformer valueTransformerForName:MTLURLValueTransformerName];
}

@end


@implementation Movie

+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"ID":@"id",
             @"title":@"title",
             @"poster":@"poster"
             };
}

+ (NSValueTransformer *)posterJSONTransformer {
    return [MTLJSONAdapter dictionaryTransformerWithModelClass:MoviePoster.class];
}

@end
