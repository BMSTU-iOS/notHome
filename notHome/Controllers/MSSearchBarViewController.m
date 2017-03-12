//
//  MSSearchBarViewController.m
//  notHome
//
//  Created by Максим Стегниенко on 11.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "MSSearchBarViewController.h"
#import "MSTableViewImageCell.h"

@interface MSSearchBarViewController () <UITableViewDelegate , UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;

@end

@interface MSSearchBarViewController()

@property (strong,nonatomic) NSMutableArray *imageArray;

@end

@implementation MSSearchBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
  
    self.imageArray = [NSMutableArray array];
    
    UIImage *image1 = [UIImage imageNamed:@"Kong1.jpg"];
    UIImage *image2 = [UIImage imageNamed:@"kong2.jpg"];
    UIImage *image3 = [UIImage imageNamed:@"lego.jpg"];
    UIImage *image4 = [UIImage imageNamed:@"Logan.jpg"];
    UIImage *image5 = [UIImage imageNamed:@"rus.jpg"];
    [self.imageArray addObject:image1];
    [self.imageArray addObject:image2];
    [self.imageArray addObject:image3];
    [self.imageArray addObject:image4];
    [self.imageArray addObject:image5];
    
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - UITableViewDataSource

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return  7;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    
    if (section == 0) {
        return 2;
    }
   
    return 1;
    
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {

    
    static NSString *searchIdentifier = @"searchCell";
    static NSString *segmentedControlIdentifier = @"segmentedControlCell";
    static NSString *yourTagCollectionIdentifier = @"yourTagCollectionCell";
    static NSString *popularNowCollectionIdentifier = @"popularNowCollectionCell";
    static NSString *anyCategoryIdentifier = @"anyCategoryCell";
    
   
    UITableViewCell *searchCell = [tableView dequeueReusableCellWithIdentifier:searchIdentifier];
    UITableViewCell *segmentedControlCell = [tableView dequeueReusableCellWithIdentifier:segmentedControlIdentifier];
    UITableViewCell *yourTagCollectionCell = [tableView dequeueReusableCellWithIdentifier:yourTagCollectionIdentifier];
    UITableViewCell *popularNowCollectionCell = [tableView dequeueReusableCellWithIdentifier:popularNowCollectionIdentifier];
    MSTableViewImageCell *anyCategoryCell = [tableView dequeueReusableCellWithIdentifier:anyCategoryIdentifier];
    
  
    if (!searchCell) {
        searchCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:searchIdentifier];
    }
    if (!segmentedControlCell) {
        segmentedControlCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:segmentedControlIdentifier];
    }
    if (!yourTagCollectionCell) {
        yourTagCollectionCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:yourTagCollectionIdentifier];
    }
    if (!popularNowCollectionCell) {
        popularNowCollectionCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:popularNowCollectionIdentifier];
    }
    if (!anyCategoryCell) {
        anyCategoryCell = [[MSTableViewImageCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:anyCategoryIdentifier];
    }
    
    if (indexPath.section == 0) {
        if (indexPath.row == 0) {
            return searchCell;
        }
        if (indexPath.row == 1) {
            return segmentedControlCell;
        }
    }
    
    if (indexPath.section == 1) {
        return yourTagCollectionCell;
    }
    if (indexPath.section == 2) {
        return popularNowCollectionCell;
    }
    if (indexPath.section >= 3 && indexPath.section <=6 ) {
        
        anyCategoryCell.image1.image = [self.imageArray objectAtIndex:0];
        anyCategoryCell.image2.image = [self.imageArray objectAtIndex:1];
        anyCategoryCell.image3.image = [self.imageArray objectAtIndex:2];
        anyCategoryCell.image4.image = [self.imageArray objectAtIndex:3];
        anyCategoryCell.image5.image = [self.imageArray objectAtIndex:4];
        
        return anyCategoryCell;
    }
    
  
    return nil;
    
}

- (nullable NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section {
    
    if (section == 1) {
        return @"ТЕГИ, НА КОТОРЫЕ ВЫ ПОДПИСАНЫ";
    }
    if (section == 2) {
        return @"ПОПУЛЯРНО СЕЙЧАС";
    }
    if (section == 3) {
        return @"КИНО";
    }
    if (section == 4) {
        return @"КУЛЬТУРНЫЕ МЕСТА";
    }
    if (section == 5) {
        return @"ПРИРОДА";
    }
    if (section == 6) {
        return @"КАРТА";
    }
    
    return @"";
}

#pragma mark - UITableViewDelegate

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if (indexPath.section == 1) {
        return 60.f;
    }
    if (indexPath.section == 2) {
        return 60.f;
    }
    if (indexPath.section >= 3 && indexPath.section <=6 ) {
        return 443.f;
    }
    
    return 44.f;
}




@end
