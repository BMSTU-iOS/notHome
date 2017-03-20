//
//  Event.h
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Event : NSObject

@property (assign, nonatomic) NSInteger ID;

@property (strong, nonatomic) NSString *title;
@property (strong, nonatomic) NSString *slug;

-(instancetype) initWithResponse:(NSDictionary *)response;

@end
