import XCTest
@testable import EaseJsonSerialization

final class EaseJsonSerializationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(EaseJsonSerialization().text, "Hello, World!")
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
