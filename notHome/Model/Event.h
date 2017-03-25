//
//  Event.h
//  notHome
//
//  Created by Дмитрий Фролов on 17.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Event : MTLModel <MTLJSONSerializing>

@property (copy, nonatomic) NSNumber *ID;
@property (copy, nonatomic) NSString *title;
@property (copy, nonatomic) NSString *slug;

@end
