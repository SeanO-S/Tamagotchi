//
//  TamagotchiTest.swift
//  TamagotchiTests
//
//  Created by Okuyama-Smith, Sean (NA) on 19/01/2022.
//

import XCTest

class TamagotchiTest: XCTestCase {

    //RED
    func testExample() throws {
        //arrange
        let tamagotchi = Tamagotchi()
        let expectedHunger = 4
        //act
        tamagotchi.eatSnack()
        //assert
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
    
    func testZeroHungerTamagotchiSnackDoesntNegative() throws {
        let tamagotchi = Tamagotchi()
        let expectedHunger = 0
        for _ in 1...6{
            tamagotchi.eatSnack()
        }
        XCTAssertEqual(tamagotchi.hunger, expectedHunger)
    }
}
