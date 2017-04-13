//
//  Place.h
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Place : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSNumber *ID;
@property (copy, nonatomic) NSURL *siteURL;
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *address;
@property (copy, nonatomic) NSString *location;
@property (copy, nonatomic) NSString *slug;
@property (copy, nonatomic) NSString *phone;
@property (copy, nonatomic) NSString *subWay;
@property (assign, nonatomic) BOOL hasParking;
@property (assign, nonatomic) BOOL isClosed;

@end
