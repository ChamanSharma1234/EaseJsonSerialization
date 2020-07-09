import XCTest
@testable import EaseJsonSerialization

final class EaseJsonSerializationTests: XCTestCase {
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        print(JsonSerialization.getArrayFromJsonString(arrayString: "[]"))
    }

    static var allTests = [
        ("testExample", testExample),
    ]
}
