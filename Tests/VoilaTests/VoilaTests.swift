import XCTest
@testable import Voila

final class VoilaTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(Voila().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
