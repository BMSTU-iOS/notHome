//
//  movieCell.h
//  notHome
//
//  Created by devil1001 on 02.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//


#import <UIKit/UIKit.h>
@class Movie;
//#import <Foundation/Foundation.h>

@interface movieCell : UITableViewCell

-(void) fillCellWithMovie:(Movie *)model;

@end
