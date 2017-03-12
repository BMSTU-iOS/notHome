//
//  NHEvent.m
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHEvent.h"

static NSString * const kEventShortTitle = @"short_title";

@implementation NHEvent

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super initWithResponse:response];
    
    if (self) {
        
        // Set short title
        if ([response objectForKey:kEventShortTitle]) {
            self.shortTitle = (NSString *)[response objectForKey:kEventShortTitle];
        }
    }
    
    return self;
}

@end
