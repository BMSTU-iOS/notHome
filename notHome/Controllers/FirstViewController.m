//
//  FirstViewController.m
//  notHome
//
//  Created by Artem Belkov on 18/02/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import "FirstViewController.h"
#import "KudaGoManager.h"
#import "Movie.h"

@interface FirstViewController ()

{
    NSMutableArray *_movieArray;
}

@end

@implementation FirstViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)checkButton:(id)sender {
    KudaGoManager *kudCheck = [[KudaGoManager alloc] init];
    [kudCheck getMoviesWithPage:1 pageSize:1 location:@"msk" success:^(NSArray *movies){
        NSLog(@"%@", movies);
        [self moviesToModel:movies];
    }failure:^(NSError *error){
        NSLog(@"%@", error);
    }];
}


-(void)moviesToModel:(NSArray *)movies {
    _movieArray = [[NSMutableArray alloc] init];
    NSInteger cout = [movies count];
    for (int i = 0; i<cout; i++) {
        NSLog(@"%d", i);
        NSInteger ID = [[[movies objectAtIndex:i] valueForKey:@"_ID"] integerValue];
        NSString *title = [[movies objectAtIndex:i] valueForKey:@"_title"];
        NSURL *poster = [[movies objectAtIndex:i] valueForKey:@"_posterURL"];
        Movie *model = [[Movie alloc] initWithModel:ID title:title posterURL:poster];
        [_movieArray addObject:model];
    }
    NSLog(@"%@", _movieArray);
}

@end
