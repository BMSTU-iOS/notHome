//
//  Event.m
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "Event.h"

static NSString *const eventID = @"id";
static NSString *const eventTitle = @"title";
static NSString *const eventSlug = @"slug";

@implementation Event

-(instancetype)initWithResponse:(NSDictionary *)response{
    self = [super init];
    
    if(self){
        if ([response objectForKey:eventID]){
            self.ID = ((NSNumber *)[response objectForKey:eventID]).integerValue;
        }
        if ([response objectForKey:eventTitle]){
            self.title = (NSString *)[response objectForKey:eventTitle];
        }
        
        if ([response objectForKey:eventSlug]){
            self.slug = (NSString *)[response objectForKey:eventSlug];
        }
    }
    return self;
}

@end
