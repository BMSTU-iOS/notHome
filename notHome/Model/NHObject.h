//
//  NHObject.h
//  notHome
//
//  Created by Artem Belkov on 12/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NHObject : NSObject

@property (assign, nonatomic) NSInteger ID;
@property (strong, nonatomic) NSString *slug;

@property (strong, nonatomic) NSString *title;

@property (strong, nonatomic) NSString *shortDescription;
@property (strong, nonatomic) NSString *fullDescription;

- (instancetype)initWithResponse:(NSDictionary *)response;

@end
