//
//  Place.m
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "Place.h"

static NSString *const placeID = @"id";
static NSString *const placeTitle = @"title";
static NSString *const placeAddress = @"address";
static NSString *const placeLocation = @"location";
static NSString *const placeSiteURL = @"site_url";
static NSString *const placeIsClosed = @"is_closed";
static NSString *const placeSlug = @"slug";

@implementation Place

-(instancetype)initWithResponse:(NSDictionary *)response{
    self = [super init];
    
    if(self){
        
        if ([response objectForKey:placeID]){
            self.ID = ((NSNumber *)[response objectForKey:placeID]).integerValue;
        }
        
        if ([response objectForKey:placeTitle]){
            self.title = (NSString *)[response objectForKey:placeTitle];
        }
        
        if ([response objectForKey:placeAddress]){
            self.address = (NSString *)[response objectForKey:placeAddress];
        }
        
        if ([response objectForKey:placeLocation]){
            self.location = (NSString *)[response objectForKey:placeLocation];
        }
        
        if ([response objectForKey:placeSiteURL]){
            self.site_url = (NSString *)[response objectForKey:placeSiteURL];
        }
        
        if ([response objectForKey:placeSlug]){
            self.slug = (NSString *)[response objectForKey:placeSlug];
        }
        
        if([response objectForKey:placeIsClosed]){
            self.is_closed = [response objectForKey:placeIsClosed]; //возможна ошибка из за не указания типов
        }
    }
    return self;
}

@end
