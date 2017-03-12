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
            self.ID = ((NSNumber *)[response objectForKey:kObjectSlug]).integerValue;
        }
    }
    
    return self;
}

@end
