//
//  LocalizedCity.h
//  notHome
//
//  Created by Vladislav on 25.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef NS_ENUM (NSUInteger, NHCities) {
    NHMoscow,
    NHNovosibirsk,
    NHSochi,
    NHUfa,
    NHSamara
};

@interface LocalizedCity : NSObject

- (NSString *)getCity:(NHCities)city;

@end
