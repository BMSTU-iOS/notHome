//
//  NHMovie.m
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHMovie.h"

static NSString * const kMovieID = @"id";
static NSString * const kMovieTitle = @"title";
static NSString * const kMoviePoster = @"poster";

@implementation NHMovie

- (instancetype)initWithResponse:(NSDictionary *)response {
    
    self = [super init];

    if (self) {
        
        // Set ID
        if ([response objectForKey:kMovieID]) {
            self.ID = ((NSNumber *)[response objectForKey:kMovieID]).integerValue;
        }
        
        // Set title
        if ([response objectForKey:kMovieTitle]) {
            self.title = (NSString *)[response objectForKey:kMovieTitle];
        }
        
        // Set poster URL
        if ([response objectForKey:kMoviePoster]) {
            self.posterURL = [NSURL URLWithString:(NSString *)[[response objectForKey:kMoviePoster] objectForKey:@"image"]];
        }
    }
    
    return self;
}

@end
