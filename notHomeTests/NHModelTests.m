//
//  NHModelTests.m
//  notHome
//
//  Created by Artem Belkov on 13/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NHObject.h"
#import "NHEvent.h"
#import "NHPlace.h"
#import "NHMovie.h"

@interface NHModelTests : XCTestCase

@end

@implementation NHModelTests

- (void)setUp {
    [super setUp];
    // Put setup code here. This method is called before the invocation of each test method in the class.
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testObjectInitWithResponse {
    
    NSInteger ID = 60844;
    NSString *slug = @"koncert-gruppy-primorskij-park";
    NSString *title = @"концерт группы «Приморский Парк»";
    NSString *shortDescription = @"<p>Ворвавшийся на российские музыкальные просторы благодаря сотрудничеству с корифеями юмористического регги-рока группой «Запрещённые барабанщики», севастопольский ансамбль «Приморский парк» даст первый большой в Петербурге на сцене клуба «Грибоедов».</p>\n";
    NSString *fullDescription = @"<p>Моментально влюбляющие в себя российскую музыкальную прессу на всём пути своего следования от Севастополя до Москвы, музыканты «Приморского парка» дают серию концертов в двух столицах. Больше похожие на геологов, чем на рок-звёзд, участники севастопольского ансамбля обезоруживают зрителя своим «городским романсом» с едва уловимым бессарабско-одесским акцентом, наполненным солнечным позитивом южного бита.</p>\n<p>«Приморский парк» не ограничивает себя в выборе инструментария, призванного донести до слушателя «саншайн шансон», как называет музыку группы её лидер Виталий Замятин — на сцене появляется гитара, контрабас, бас-барабан и губная гармоника.</p>\n<p>Вечные пионеры очень быстро нашли общий язык с легендарными «Запрещёнными барабанщиками» — дружба коллективов началась с совместного исполнения песни «Бескозырка белая» в одном из клубов Севастополя.</p>\n<p>Нынешний гастрольный трип — сольное мероприятие взрослого и уже популярного коллектива, в творческих перспективах которого сомневаться не приходится. Музыкальные «уже не мальчики, но мужи» уверенно собирают полные залы в столичных клубах — сольник на сцене «Грибоедова» исключением не будет.</p>\n";
    
    NSDictionary *testResponse = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @(ID),            @"id",
                                  slug,             @"slug",
                                  title,            @"title",
                                  shortDescription, @"description",
                                  fullDescription,  @"body_text", nil];
    
    NHObject *object = [[NHObject alloc] initWithResponse:testResponse];
    
    XCTAssert(object.ID == ID, "IDs don't match");
    XCTAssert([object.slug isEqualToString:slug], "Slugs don't match");
    XCTAssert([object.title isEqualToString:title], "Titles don't match");
    XCTAssert([object.shortDescription isEqualToString:shortDescription], "Short descriptions don't match");
    XCTAssert([object.fullDescription isEqualToString:fullDescription], "Full descriptions don't match");
}

- (void)testEventInitWithResponse {
    
    NSInteger ID = 60844;
    NSString *slug = @"koncert-gruppy-primorskij-park";
    NSString *title = @"концерт группы «Приморский Парк»";
    NSString *shortTitle = @"концерт «Приморский Парк»";
    
    NSDictionary *testResponse = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @(ID),            @"id",
                                  slug,             @"slug",
                                  title,            @"title",
                                  shortTitle,       @"short_title", nil];
    
    NHEvent *event = [[NHEvent alloc] initWithResponse:testResponse];
    
    XCTAssert(event.ID == ID, "IDs don't match");
    XCTAssert([event.slug isEqualToString:slug], "Slugs don't match");
    XCTAssert([event.title isEqualToString:title], "Titles don't match");
    XCTAssert([event.shortTitle isEqualToString:shortTitle], "Short titles don't match");
}

- (void)testPlaceInitWithResponse {
    
    NSInteger ID = 60844;
    NSString *slug = @"koncert-gruppy-primorskij-park";
    NSString *title = @"концерт группы «Приморский Парк»";
    NSString *shortTitle = @"концерт «Приморский Парк»";
    
    NSDictionary *testResponse = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @(ID),            @"id",
                                  slug,             @"slug",
                                  title,            @"title",
                                  shortTitle,       @"short_title", nil];
    
    NHPlace *place = [[NHPlace alloc] initWithResponse:testResponse];
    
    XCTAssert(place.ID == ID, "IDs don't match");
    XCTAssert([place.slug isEqualToString:slug], "Slugs don't match");
    XCTAssert([place.title isEqualToString:title], "Titles don't match");
    XCTAssert([place.shortTitle isEqualToString:shortTitle], "Short titles don't match");
}

- (void)testMovieInitWithResponse {
    
    NSInteger ID = 60844;
    NSString *slug = @"koncert-gruppy-primorskij-park";
    NSString *title = @"концерт группы «Приморский Парк»";
    NSString *posterURLString = @"https://kudago.com/media/images/movie/67/5e/675e9eee12bd238a0eb5e66cbe32498b.jpg";
    NSString *siteURLString = @"https://kudago.com/movie/slender/";
    
    NSDictionary *testResponse = [NSDictionary dictionaryWithObjectsAndKeys:
                                  @(ID),            @"id",
                                  slug,             @"slug",
                                  title,            @"title",
                                  [NSDictionary dictionaryWithObjectsAndKeys: posterURLString, @"image", nil],  @"poster",
                                  siteURLString,    @"url", nil];
    
    NHMovie *movie = [[NHMovie alloc] initWithResponse:testResponse];
    
    XCTAssert(movie.ID == ID, "IDs don't match");
    XCTAssert([movie.slug isEqualToString:slug], "Slugs don't match");
    XCTAssert([movie.title isEqualToString:title], "Titles don't match");
    XCTAssert([movie.posterURL isEqual:[NSURL URLWithString:posterURLString]], "Poster URLs don't match");
    XCTAssert([movie.siteURL isEqual:[NSURL URLWithString:siteURLString]], "Site URLs don't match");
}

@end
