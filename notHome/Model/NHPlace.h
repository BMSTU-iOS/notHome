//
//  NHPlace.h
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "NHObject.h"

@interface NHPlace : NHObject

@property (strong, nonatomic) NSString *shortTitle;

- (instancetype)initWithResponse:(NSDictionary *)response;

@end
