//
//  NHEvent.m
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHEvent.h"

static NSString * const kEventTitle = @"title";
static NSString * const kEventShortTitle = @"short_title";
static NSString * const kEventShortDescription = @"description";
static NSString * const kEventFullDescription = @"body_text";

@implementation NHEvent

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super initWithResponse:response];
    
    if (self) {
        
        // Set title
        if ([response objectForKey:kEventTitle]) {
            self.title = (NSString *)[response objectForKey:kEventTitle];
        }
        
        // Set short title
        if ([response objectForKey:kEventShortTitle]) {
            self.shortTitle = (NSString *)[response objectForKey:kEventShortTitle];
        }
        
        // Set short description
        if ([response objectForKey:kEventShortDescription]) {
            self.shortDescription = (NSString *)[response objectForKey:kEventShortDescription];
        }
        
        // Set full description
        if ([response objectForKey:kEventFullDescription]) {
            self.fullDescription = (NSString *)[response objectForKey:kEventFullDescription];
        }
    }
    
    return self;
}

@end
