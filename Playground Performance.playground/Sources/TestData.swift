import Foundation

//
// Do any set-up here 
//

public func createTestData() -> [String] {
    return (0..<1000000).map { _ in NSUUID().uuidString }
}
