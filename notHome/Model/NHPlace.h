//
//  NHPlace.h
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHObject.h"

@interface NHPlace : NHObject

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *shortTitle;

@property (strong, nonatomic) NSString *shortDescription;
@property (strong, nonatomic) NSString *fullDescription;

- (instancetype)initWithResponse:(NSDictionary *)response;

@end
