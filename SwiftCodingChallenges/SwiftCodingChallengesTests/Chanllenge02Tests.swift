import XCTest
@testable import SwiftCodingChallenges

final class Chanllenge02Tests: XCTestCase {
    func test_onResolvePalindrome_withRotator_returnsTrue() {
        let input = "rotator"
        XCTAssertTrue(Chanllenge02.resolve(input: input))
        XCTAssertTrue(Chanllenge02.resolution(input: input))
    }
    
    func test_onResolvePalindrome_withSentence_returnsTrue() {
        let input = "Rats live on no evil star"
        XCTAssertTrue(Chanllenge02.resolve(input: input))
        XCTAssertTrue(Chanllenge02.resolution(input: input))
    }
    
    func test_onResolvePalindrome_withNopalindrome_returnsFalse() {
        let input = "Never odd or even"
        XCTAssertFalse(Chanllenge02.resolve(input: input))
        XCTAssertFalse(Chanllenge02.resolution(input: input))
    }
    
    func test_onResolvePalindrome_withHelloWorld_returnsFalse() {
        let input = "Hello, world"
        XCTAssertFalse(Chanllenge02.resolve(input: input))
        XCTAssertFalse(Chanllenge02.resolution(input: input))
    }
}
