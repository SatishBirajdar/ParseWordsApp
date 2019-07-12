//
//  ParseWordsViewModelTests.swift
//  SecureKeyParseWordsAppTests
//
//  Created by Satish Birajdar on 2019-06-22.
//  Copyright © 2019 SBSoftwares. All rights reserved.
//

import XCTest
@testable import SecureKeyParseWordsApp

class ParseWordsViewModelTests: XCTestCase {
    var vm : ParseWordsViewModel  = ParseWordsViewModel()
    
    override func setUp() {
        super.setUp()
    }

    // Test for valid lower case input
    func testValidLowerCaseInput() {
        vm.parseWordsArrayIn(input: "applepieshoe")
        
        guard let result = vm.resultArray else {
            XCTFail("Expected a resultArray to be NotNil")
            return
        }
        XCTAssertEqual(result, ["apple","pie","shoe"])
    }
    
    // Test for valid upper case input
    func testValidUpperCaseInput() {
        vm.parseWordsArrayIn(input: "APPLEPIESHOE")
        
        guard let result = vm.resultArray else {
            XCTFail("Expected a resultArray to be NotNil")
            return
        }
        XCTAssertEqual(result, ["apple","pie","shoe"])
    }
    
    // Test for another valid input
    func testValidAnotherValidInput1() {
        vm.parseWordsArrayIn(input: "secondary")
        
        guard let result = vm.resultArray else {
            XCTFail("Expected a resultArray to be NotNil")
            return
        }
        XCTAssertEqual(result, ["second","secondary"])
    }
    
    // Test for another valid input
    func testValidAnotherValidInput2() {
        vm.parseWordsArrayIn(input: "secondaryHighSchool")
        
        guard let result = vm.resultArray else {
            XCTFail("Expected a resultArray to be NotNil")
            return
        }
        XCTAssertEqual(result, ["second","secondary"])
    }
    
    // Test for invalid input
    func testValidAnotherInValidInput() {
        vm.parseWordsArrayIn(input: "PrimaryHighSchool")
        
        guard let result = vm.resultArray else {
            XCTFail("Expected a resultArray to be NotNil")
            return
        }
        XCTAssertEqual(result, [])
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
}
