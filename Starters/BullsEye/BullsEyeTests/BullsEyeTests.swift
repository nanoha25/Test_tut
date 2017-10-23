//
//  BullsEyeTests.swift
//  BullsEyeTests
//
//  Created by 白崎つぐみ on 21/10/17.
//  Copyright © 2017 Ray Wenderlich. All rights reserved.
//

import XCTest
@testable import BullsEye

class BullsEyeTests: XCTestCase {
    var gameUnderTest: BullsEyeGame!
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
        gameUnderTest = BullsEyeGame()
        gameUnderTest.startNewGame()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        gameUnderTest = nil
        super.tearDown()
    }
    
    func testScoreIsComputed() {
        //1. given
        let guess = gameUnderTest.targetValue + 5
        
        //2. when
        _ = gameUnderTest.check(guess: guess)
        
        //3. then
        XCTAssertEqual(gameUnderTest.scoreRound, 95, "Score computer from guess is wrong")
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
