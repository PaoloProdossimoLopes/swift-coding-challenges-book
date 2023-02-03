import XCTest
@testable import SwiftCodingChallenges

final class Challenge01Tests: XCTestCase {
    func test_onResolve_withNoDuplicateInput_returnsTrue() {
        XCTAssertTrue(Challenge01.resolve(input: "No Duplicates"))
        XCTAssertTrue(Challenge01.resolution(input: "No Duplicates"))
        XCTAssertTrue(Challenge01.smartResolution(input: "No Duplicates"))
    }
    
    func test_onResolve_withAllLettersAsLowerCase_returnsTrue() {
        XCTAssertTrue(Challenge01.resolve(input: "abcdefghijklmnopqrstuvwxyz"))
        XCTAssertTrue(Challenge01.resolution(input: "No Duplicates"))
        XCTAssertTrue(Challenge01.smartResolution(input: "No Duplicates"))
    }
    
    func test_onResolve_withLowerAndUpperCasedEqualLetters_returnsTrue() {
        XCTAssertTrue(Challenge01.resolve(input: "AaBbCc"))
        XCTAssertTrue(Challenge01.resolution(input: "AaBbCc"))
        XCTAssertTrue(Challenge01.smartResolution(input: "AaBbCc"))
    }
    
    func test_onResolve_withDuplicatedLowerCase_returnsFalse() {
        XCTAssertFalse(Challenge01.resolve(input: "Hello, world"))
        XCTAssertFalse(Challenge01.resolution(input: "Hello, world"))
        XCTAssertFalse(Challenge01.smartResolution(input: "Hello, world"))
    }
    
    func test_onResolve_withDuplicatedLowerNonConsecultiveCase_returnsFalse() {
        XCTAssertFalse(Challenge01.resolve(input: "test your resolution"))
        XCTAssertFalse(Challenge01.resolution(input: "test your resolution"))
        XCTAssertFalse(Challenge01.smartResolution(input: "test your resolution"))
    }
    
    func test_onResolve_withNoCharacterDuplicationButDuplicatedWhiteSpace_returnsFalse() {
        let input = "a b c d"
        XCTAssertFalse(Challenge01.resolve(input: input))
        XCTAssertFalse(Challenge01.resolution(input: input))
        XCTAssertFalse(Challenge01.smartResolution(input: input))
    }
}
