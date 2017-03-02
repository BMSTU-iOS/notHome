//
//  Movie.h
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Movie : NSObject

@property (assign, nonatomic) NSInteger ID;

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSURL *posterURL;

- (instancetype)initWithResponse:(NSDictionary *)response;
- (instancetype) initWithModel:(NSInteger)ID title:(NSString *)title posterURL:(NSURL *)posterURL;

@end
