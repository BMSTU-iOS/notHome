//
//  NHPlace.m
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHPlace.h"

static NSString * const kPlaceTitle = @"title";
static NSString * const kPlaceShortTitle = @"short_title";
static NSString * const kPlaceShortDescription = @"description";
static NSString * const kPlaceFullDescription = @"body_text";

@implementation NHPlace

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super initWithResponse:response];
    
    if (self) {
        
        // Set title
        if ([response objectForKey:kPlaceTitle]) {
            self.title = (NSString *)[response objectForKey:kPlaceTitle];
        }
        
        // Set short title
        if ([response objectForKey:kPlaceShortTitle]) {
            self.shortTitle = (NSString *)[response objectForKey:kPlaceShortTitle];
        }
        
        // Set short description
        if ([response objectForKey:kPlaceShortDescription]) {
            self.shortDescription = (NSString *)[response objectForKey:kPlaceShortDescription];
        }
        
        // Set full description
        if ([response objectForKey:kPlaceFullDescription]) {
            self.fullDescription = (NSString *)[response objectForKey:kPlaceFullDescription];
        }
    }
    
    return self;
}

@end
