import XCTest
@testable import SwiftCodingChallenges

final class Challenge03Tests: XCTestCase {
    func test_onResolve_withABCA_andABCA_returnsTrue() {
        let input = "abca"
        XCTAssertTrue(Challenge03.resolve(first: input, second: input))
        XCTAssertTrue(Challenge03.originalResolution(string1: input, string2: input))
        XCTAssertTrue(Challenge03.modifiedResolution(string1: input, string2: input))
        XCTAssertTrue(Challenge03.smart(string1: input, string2: input))
    }
    
    func test_onResolve_withABC_andCBA_returnsTrue() {
        let first = "abc"
        let second = "cba"
        XCTAssertTrue(Challenge03.resolve(first: first, second: second))
        XCTAssertTrue(Challenge03.originalResolution(string1: first, string2: second))
        XCTAssertTrue(Challenge03.modifiedResolution(string1: first, string2: second))
        XCTAssertTrue(Challenge03.smart(string1: first, string2: second))
    }
    
    func test_onResolve_withABC_andABCA_returnsTrue() {
        let first = "a1 b2"
        let second = "b1 a2"
        XCTAssertTrue(Challenge03.resolve(first: first, second: second))
        XCTAssertTrue(Challenge03.originalResolution(string1: first, string2: second))
        XCTAssertTrue(Challenge03.modifiedResolution(string1: first, string2: second))
        XCTAssertTrue(Challenge03.smart(string1: first, string2: second))
    }
    
    func test_onResolve_withABC_andABCA_returnsFalse() {
        let first = "abc"
        let second = "abca"
        XCTAssertFalse(Challenge03.resolve(first: first, second: second))
        XCTAssertFalse(Challenge03.originalResolution(string1: first, string2: second))
        XCTAssertFalse(Challenge03.modifiedResolution(string1: first, string2: second))
        XCTAssertFalse(Challenge03.smart(string1: first, string2: second))
    }
    
    func test_onResolve_withABC_andALowerCasedBC_returnsFalse() {
        let first = "abc"
        let second = "Abc"
        XCTAssertFalse(Challenge03.resolve(first: first, second: second))
        XCTAssertFalse(Challenge03.originalResolution(string1: first, string2: second))
        XCTAssertFalse(Challenge03.modifiedResolution(string1: first, string2: second))
        XCTAssertFalse(Challenge03.smart(string1: first, string2: second))
    }
    
    func test_onResolve_withABC_andCBAUppercasedALowercased_returnsFalse() {
        let first = "abc"
        let second = "cbAa"
        XCTAssertFalse(Challenge03.resolve(first: first, second: second))
        XCTAssertFalse(Challenge03.originalResolution(string1: first, string2: second))
        XCTAssertFalse(Challenge03.modifiedResolution(string1: first, string2: second))
        XCTAssertFalse(Challenge03.smart(string1: first, string2: second))
    }
}
