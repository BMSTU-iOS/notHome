//
//  NHMovie.m
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHMovie.h"

static NSString * const kMoviePoster = @"poster";
static NSString * const kMovieSiteURL = @"url";

@implementation NHMovie

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super initWithResponse:response];

    if (self) {
        
        // Set poster URL
        if ([response objectForKey:kMoviePoster]) {
            self.posterURL = [NSURL URLWithString:(NSString *)[[response objectForKey:kMoviePoster] objectForKey:@"image"]];
        }
        
        // Set site URL
        if ([response objectForKey:kMovieSiteURL]) {
            self.siteURL = [NSURL URLWithString:(NSString *)[response objectForKey:kMovieSiteURL]];
        }
    }
    
    return self;
}

@end
