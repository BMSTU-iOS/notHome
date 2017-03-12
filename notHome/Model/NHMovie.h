//
//  NHMovie.h
//  notHome
//
//  Created by Artem Belkov on 23/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHObject.h"

@interface NHMovie : NHObject

@property (strong, nonatomic) NSURL *posterURL;
@property (strong, nonatomic) NSURL *siteURL;

- (instancetype)initWithResponse:(NSDictionary *)response;

@end
