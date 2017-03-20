//
//  KudaGoManager.h
//  notHome
//
//  Created by Artem Belkov on 22/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface KudaGoManager : NSObject

+ (KudaGoManager *) sharedManager;

- (void)getMoviesWithPage:(NSInteger)page
                 pageSize:(NSInteger)pageSize
                 location:(NSString *)location
                  success:(void(^)(NSArray *movies))success
                  failure:(void(^)(NSError *error))failure;

- (void)getMoviesWithPage:(NSInteger)page
                 pageSize:(NSInteger)pageSize
                  orderBy:(NSString *)order
                 location:(NSString *)location
                     free:(BOOL)free
                  placeID:(NSInteger)placeID
                    since:(NSDate *)sinceDate
                    until:(NSDate *)untilDate
                  success:(void(^)(NSArray *movies))success
                  failure:(void(^)(NSError *error))failure;


-(void)getEventsWithPage:(NSInteger)page
                pageSize:(NSInteger)pageSize
                location:(NSString *)location
                //fields
                     lon:(NSNumber *)lon
                     lat:(NSNumber *)lat
                  radius:(NSNumber *)radius
                 success:(void(^)(NSArray *events))success
                 failure:(void(^)(NSError *error))failure;

-(void)getPlacesWithPage:(NSInteger)page
                pageSize:(NSInteger)pageSize
                location:(NSString *)location
                     lon:(NSNumber *)lon
                     lat:(NSNumber *)lat
                  radius:(NSNumber *)radius
                 success:(void(^)(NSArray *events))success
                 failure:(void(^)(NSError *error))failure;

@end
