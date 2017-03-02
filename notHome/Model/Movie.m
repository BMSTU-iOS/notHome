//
//  Movie.m
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "Movie.h"

static NSString * const kMovieID = @"id";
static NSString * const kMovieTitle = @"title";
static NSString * const kMoviePoster = @"poster";

@implementation Movie

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

-(instancetype)initWithModel:(NSInteger)ID title:(NSString *)title posterURL:(NSURL *)posterURL {
    if (self = [super init]) {
        _ID = ID;
        _title = title;
        _posterURL = posterURL;
    }
    return self;
}

@end
