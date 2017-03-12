//
//  NHPlace.m
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHPlace.h"

static NSString * const kPlaceShortTitle = @"short_title";

@implementation NHPlace

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super initWithResponse:response];
    
    if (self) {

        // Set short title
        if ([response objectForKey:kPlaceShortTitle]) {
            self.shortTitle = (NSString *)[response objectForKey:kPlaceShortTitle];
        }
    }
    
    return self;
}

@end
