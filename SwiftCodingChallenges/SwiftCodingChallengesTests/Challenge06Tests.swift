import XCTest
@testable import SwiftCodingChallenges

final class Challenge06Tests: XCTestCase {
    func test_onRemoveDuplcation_forWOMBAT_returnsWOMBAT() {
        XCTAssertEqual(Challenge06.removeDuplication("Wombat"), "Wombat")
    }
    
    func test_onRemoveDuplcation_forHELLO_returnsHELO() {
        XCTAssertEqual(Challenge06.removeDuplication("Hello"), "Helo")
    }
    
    func test_onRemoveDuplcation_forMISSISSIPPI_returnsMISP() {
        XCTAssertEqual(Challenge06.removeDuplication("Mississippi"), "Misp")
    }
}
