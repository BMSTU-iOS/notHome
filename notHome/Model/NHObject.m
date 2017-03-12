//
//  NHObject.m
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHObject.h"

static NSString * const kObjectID = @"id";
static NSString * const kObjectSlug = @"slug";
static NSString * const kObjectTitle = @"title";
static NSString * const kObjectShortDescription = @"description";
static NSString * const kObjectFullDescription = @"body_text";

@implementation NHObject

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super init];
    
    if (self) {
        
        // Set ID
        if ([response objectForKey:kObjectID]) {
            self.ID = ((NSNumber *)[response objectForKey:kObjectID]).integerValue;
        }
        
        // Set slug
        if ([response objectForKey:kObjectSlug]) {
            self.slug = (NSString *)[response objectForKey:kObjectSlug];
        }
        
        // Set title
        if ([response objectForKey:kObjectTitle]) {
            self.title = (NSString *)[response objectForKey:kObjectTitle];
        }
        
        // Set short description
        if ([response objectForKey:kObjectShortDescription]) {
            self.shortDescription = (NSString *)[response objectForKey:kObjectShortDescription];
        }
        
        // Set full description
        if ([response objectForKey:kObjectFullDescription]) {
            self.fullDescription = (NSString *)[response objectForKey:kObjectFullDescription];
        }
    }
    
    return self;
}

@end
