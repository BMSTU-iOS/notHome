//
//  NHModelTests.m
//  notHome
//
//  Created by Artem Belkov on 13/03/2017.
//  Copyright © 2017 BMSTU-iOS. All rights reserved.
//

#import <XCTest/XCTest.h>

#import "NHObject.h"

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
    [self measureBlock:^{
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
    }];
}

@end
