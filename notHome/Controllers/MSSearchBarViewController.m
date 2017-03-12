//
//  MSSearchBarViewController.m
//  notHome
//
//  Created by Максим Стегниенко on 11.03.17.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "MSSearchBarViewController.h"

@interface MSSearchBarViewController () <UITableViewDelegate , UITableViewDataSource>
@property (weak, nonatomic) IBOutlet UITableView *categoryTableView;

@end

@implementation MSSearchBarViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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
    UITableViewCell *anyCategoryCell = [tableView dequeueReusableCellWithIdentifier:anyCategoryIdentifier];
    
  
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
        anyCategoryCell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:anyCategoryIdentifier];
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
