//
//  KudaGoManager.m
//  notHome
//
//  Created by Artem Belkov on 22/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "KudaGoManager.h"
#import "AFNetworking.h"

#import "NHMovie.h"

static NSString * const kKudaGoURL = @"https://kudago.com/public-api/v1.3/";

@interface KudaGoManager ()
@property (strong, nonatomic) AFHTTPSessionManager *sessionManager;
@end

@implementation KudaGoManager

+ (KudaGoManager *) sharedManager {
    
    static KudaGoManager *manager = nil;
    
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        manager = [[KudaGoManager alloc] init];
    });
    
    return manager;
}

#pragma mark - Initialization

- (id)init {
    
    self = [super init];
    
    if (self) {
        // Set KudaGo API URL as base URL
        NSURL *url = [NSURL URLWithString:kKudaGoURL];
        self.sessionManager = [[AFHTTPSessionManager alloc] initWithBaseURL:url];
    }
    
    return self;
}

#pragma mark - Movie

- (void)getMoviesWithPage:(NSInteger)page
                 pageSize:(NSInteger)pageSize
                  orderBy:(NSString *)order
                 location:(NSString *)location
                     free:(BOOL)free
                  placeID:(NSInteger)placeID
                    since:(NSDate *)sinceDate
                    until:(NSDate *)untilDate
                  success:(void(^)(NSArray *movies))success
                  failure:(void(^)(NSError *error))failure {
    
    // Adding parameters
    
    NSMutableDictionary *parameters;
    
    // * page
    
    if (page > 0)  {
        [parameters setObject:@(page) forKey:@"page"];
    }
    
    // * page size
    
    if (pageSize > 0) {
        [parameters setObject:@(pageSize) forKey:@"page_size"];
    }
    
    // * order by - сортировка выдачи по указанным полям, можно несколько через запятую
    //              Если поле указано со знаком минус, то происходит сортировка по убыванию
    
    // Список параметров: id, publication_date, slug, title, description, body_text, is_editors_choice, favorites_count, genres, comments_count, original_title, locale country, year, language, running_time, budget_currency, budget, mpaa_rating, age_restriction, stars, director, writer, awards, trailer, url, imdb_url, imdb_rating, trailer
    
    if (order) {
        [parameters setObject:order forKey:@"order_by"];
    }
    
    // * location - один из городов в списке
    
    /* Список городов: spb - Санкт-Петербург
                       msk - Москва
                       nsk - Новосибирск
                       ekb - Екатеринбург
                       nnv - Нижний Новгород
                       kzn - Казань
                       vbg - Выборг
                       smr - Самара
                       krd - Краснодар
                       sochi - Сочи
                       ufa - Уфа
                       krasnoyarsk - Красноярск
                       kev - Киев
                       new-york - Нью-Йорк
    */
    
    // * free

    [parameters setObject:@(free) forKey:@"is_free"];
    
    // * place ID
    
    if (placeID > 0) {
        [parameters setObject:@(placeID) forKey:@"place_id"];
    }
    
    // * since date
    
    if (sinceDate) {
        time_t sinceUTCDate = (time_t)[sinceDate timeIntervalSince1970]; // Convert NSDate to UTC
        [parameters setObject:@(sinceUTCDate) forKey:@"actual_since"];
    }
    
    // * until date
    
    if (untilDate) {
        time_t untilUTCDate = (time_t)[untilDate timeIntervalSince1970]; // Convert NSDate to UTC
        [parameters setObject:@(untilUTCDate) forKey:@"actual_until"];
    }

    [self.sessionManager GET:@"movies"
                  parameters:parameters
                    progress:nil
                     success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
                         
                         if ([responseObject objectForKey:@"results"]) { // If response exist
                             
                             // Parsing response
                             
                             NSArray *movieResponses = [responseObject objectForKey:@"results"];
                             NSMutableArray *movies = [NSMutableArray array];
                             
                             for (NSDictionary *movieResponse in movieResponses) {
                                 
                                 NHMovie *movie = [[NHMovie alloc] initWithResponse:movieResponse];
        
                                 [movies addObject:movie];
                             }
                             
                             if (success) {
                                 success(movies);
                             }
                             
                         } else {
                             
                             NSError *error = [NSError errorWithDomain:NSPOSIXErrorDomain
                                                                  code:-100
                                                              userInfo:@{NSLocalizedDescriptionKey: NSLocalizedString(@"Can't get results", nil)}];
                             failure(error);
                         }
                     }
                     failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                         
                         if (failure) {
                             failure(error);
                         }
                         
                     }];
    
}

- (void)getMoviesWithPage:(NSInteger)page
                 pageSize:(NSInteger)pageSize
                 location:(NSString *)location
                  success:(void(^)(NSArray *movies))success
                  failure:(void(^)(NSError *error))failure {
    
    [self getMoviesWithPage:page
                   pageSize:pageSize
                    orderBy:nil
                   location:location
                       free:false
                    placeID:0
                      since:nil
                      until:nil
                   success:^(NSArray *movies) {
                        
                        if (success) {
                            success(movies);
                        }
                        
                    }
                    failure:^(NSError *error) {
                        
                        if(failure) {
                            failure(error);
                        }
                        
                    }];
}

@end
