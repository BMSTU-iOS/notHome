//
//  LocalizedCity.m
//  notHome
//
//  Created by Vladislav on 25.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "LocalizedCity.h"

@implementation LocalizedCity

- (NSString *)getCity: (NHCities)city {
    switch (city) {
        case NHMoscow:
            return @"msk";
        case NHNovosibirsk:
            return @"nsk";
        case NHSochi:
            return @"sochi";
        case NHUfa:
            return @"ufa";
        case NHSamara:
            return @"smr";
    }
}

@end
