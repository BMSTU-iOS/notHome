//
//  Place.h
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Place : NSObject

@property (assign, nonatomic)NSInteger ID;

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *address;
@property (strong, nonatomic) NSString *location;
@property (strong, nonatomic) NSString *site_url;
@property (strong, nonatomic) NSString *slug;
@property (assign, nonatomic) BOOL is_closed;

-(instancetype) initWithResponse:(NSDictionary *)response;

@end
