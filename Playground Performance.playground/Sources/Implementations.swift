import Foundation

//
// Provide the different implementations you want to test here. Doing this in
// the main playground would make things really slow compared to the "real world"
// so always do this in Sources

//Manually mapping an array
public let handCodedImplementation = { (testData:[String])->Void in
    var newArray = [String]()

    for value in testData{
        newArray.append(value.lowercased())
    }
}

//Just calling Swift map
public let swiftMap = { (testData:[String]) -> Void in
    testData.map({$0.lowercased()})

    return Void()
}

public let myImpl = { (testData: Int) -> Void in
    Set(Array(stride(from: 0, through: testData, by: 3)) + Array(stride(from: 0, through: testData, by: 5))).reduce(0, +)
    return Void()
}

public let othersImpl = { (testData: Int) -> Void in 
    (0 ... testData)
        .filter { ($0 % 3) * ($0 % 5) == 0 }
        .reduce(0, +)

    return Void()
}
