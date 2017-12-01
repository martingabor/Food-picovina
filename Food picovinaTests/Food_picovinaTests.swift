//
//  Food_picovinaTests.swift
//  Food picovinaTests
//
//  Created by Martin Gábor on 30/11/2017.
//  Copyright © 2017 Martin Gábor. All rights reserved.
//

import XCTest
@testable import Food_picovina

class Food_picovinaTests: XCTestCase {
    
    //MARK: Meal class tests
    //Confirm that the Meal initializer returns a Meal object when passed valid parameters
    func testMealInitializationSuceeds(){
        // Zero rating
        let zeroRatingMeal = Meal.init(name: "Zero", photo: nil, rating: 0)
        XCTAssertNotNil(zeroRatingMeal)
        
        // Highest positive rating
        let highestPositiveRatingMeal = Meal.init(name: "Positive", photo: nil, rating: 5)
        XCTAssertNotNil(highestPositiveRatingMeal)
    }
    //Confirm that Meal initialization returns nil when passed invalid parameters = negative rating or empty name
    func testMealInitializationFail() {
        let negativeMealRating = Meal.init(name: "Negative", photo: nil, rating: -1)
        XCTAssertNil(negativeMealRating)
        
        let largeRatingMeal = Meal.init(name: "Too big", photo: nil, rating: 6)
        XCTAssertNil(largeRatingMeal)
        
        let emptyNameMeal = Meal.init(name: "", photo: nil, rating: 4)
        XCTAssertNil(emptyNameMeal)
    }
    
}
