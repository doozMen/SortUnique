import XCTest
import class Foundation.Bundle
import SortUnique

final class SortUniqueTests: XCTestCase {
    let input = """
        "On"="On";
        "Off"="Off";
        "Boost"="Boost";
        """
    
    func test_sort_strings() throws {
     
        XCTAssertEqual(
            try sort(text: input),
            """
            "Boost"="Boost";
            "Off"="Off";
            "On"="On";
            """
        )
    }
    
    func test_process() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        
        // Some of the APIs that we use below are available in macOS 10.13 and above.
        guard #available(macOS 10.13, *) else {
            return
        }
  
        let fooBinary = productsDirectory.appendingPathComponent("sort-unique")
        XCTAssertNotNil(fooBinary)
    }
    
    /// Returns path to the built products directory.
    var productsDirectory: URL {
        #if os(macOS)
        for bundle in Bundle.allBundles where bundle.bundlePath.hasSuffix(".xctest") {
            return bundle.bundleURL.deletingLastPathComponent()
        }
        fatalError("couldn't find the products directory")
        #else
        return Bundle.main.bundleURL
        #endif
    }
    
    static var allTests = [
        ("test_process", test_process, "test_sort_strings", test_sort_strings),
    ]
}
