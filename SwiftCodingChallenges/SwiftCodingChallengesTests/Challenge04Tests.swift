import XCTest
@testable import SwiftCodingChallenges

final class Challenge04Tests: XCTestCase {
    
    func test_onfuzzyContains_withHelloWorld_containsHello_returnsTrue() {
        XCTAssertTrue("Hello, world".fuzzyContains("Hello"))
        XCTAssertTrue("Hello, world".fuzzyContainsResolution("Hello"))
        XCTAssertTrue("Hello, world".fuzzyContainsSmartResolution("Hello"))
    }
    
    func test_onfuzzyContains_withHelloWorld_containsWorldUppercased_returnsTrue() {
        XCTAssertTrue("Hello, world".fuzzyContains("WORLD"))
        XCTAssertTrue("Hello, world".fuzzyContainsResolution("WORLD"))
        XCTAssertTrue("Hello, world".fuzzyContainsSmartResolution("WORLD"))
    }
    
    func test_onfuzzyContains_withHelloWorld_containsGodbye_returnsFalse() {
        XCTAssertFalse("Hello, world".fuzzyContains("Goodbye"))
        XCTAssertFalse("Hello, world".fuzzyContainsResolution("Goodbye"))
        XCTAssertFalse("Hello, world".fuzzyContainsSmartResolution("Goodbye"))
    }
}
