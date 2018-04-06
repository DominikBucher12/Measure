import Foundation

//
// Do any set-up here 
//

public func createTestData()->[String]{
    var tempData = [String]()
    
    for _ in 0..<1000000{
        tempData.append(NSUUID().uuidString)
    }

    return tempData
}
