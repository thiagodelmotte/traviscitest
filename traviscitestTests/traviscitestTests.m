//
//  traviscitestTests.m
//  traviscitestTests
//
//  Created by Thiago Delmotte on 13/01/16.
//  Copyright © 2016 Thiago Delmotte. All rights reserved.
//

#import <XCTest/XCTest.h>
#import "ViewController.h"

@interface traviscitestTests : XCTestCase

@property (nonatomic) ViewController *vc;

@end

@interface ViewController (Test)

- (int)doMath:(int)x andY:(int)y;

@end

@implementation traviscitestTests

- (void)setUp {
    
    [super setUp];
    
    self.vc = [[ViewController alloc] init];
    
}

- (void)tearDown {
    // Put teardown code here. This method is called after the invocation of each test method in the class.
    [super tearDown];
}

- (void)testDoMath {
    
    int x = 2;
    int y = 6;
    int r1 = 8;
    
    int r = [self.vc doMath:x andY:y];
    
    XCTAssertEqual(r1, r);
    
}

@end
