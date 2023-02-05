import XCTest
@testable import SwiftCodingChallenges

final class Challenge05Tests: XCTestCase {
    func test_onCount_inTheRainInSpain_forLetterA_returnsTwo() {
        XCTAssertEqual(Challege05.count(in: "The rain in Spain", character: "a"), 2)
        XCTAssertEqual(Challege05.smart(input: "The rain in Spain", count: "a"), 2)
        XCTAssertEqual(Challege05.other(input: "The rain in Spain", count: "a"), 2)
    }
    
    func test_onCount_inMississippi_forLetterI_returnsFour() {
        XCTAssertEqual(Challege05.count(in: "Mississippi", character: "i"), 4)
        XCTAssertEqual(Challege05.smart(input: "Mississippi", count: "i"), 4)
        XCTAssertEqual(Challege05.other(input: "Mississippi", count: "i"), 4)
    }
    
    func test_onCount_inHcakingWithSwift_forLetterI_returnsThree() {
        XCTAssertEqual(Challege05.count(in: "Hacking with Swift", character: "i"), 3)
        XCTAssertEqual(Challege05.smart(input: "Hacking with Swift", count: "i"), 3)
        XCTAssertEqual(Challege05.other(input: "Hacking with Swift", count: "i"), 3)
    }
}
