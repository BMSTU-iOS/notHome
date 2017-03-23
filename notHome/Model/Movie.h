//
//  Movie.h
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface MoviePoster : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSURL *imageURL;
@property (copy, nonatomic) NSDictionary *source;

@end


@interface Movie : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSNumber *ID;
@property (copy, nonatomic) NSString *title;
@property (strong, nonatomic) MoviePoster* poster;

@end
