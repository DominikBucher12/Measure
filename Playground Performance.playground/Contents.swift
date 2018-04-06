/*:
### Introduction

This playground demonstrates the use some standard methods to test the performance of algorithms in a playground. Note that the algorithms under test (and creation of test data) are in separate Sources files to ensure they run more closely to actual performance, otherwise the playground interativity will dramatically slow everything down.


### Test Data
This function is defined in the *TestData.swift* file and sets up the data
*/

let testData = createTestData()
/*:
### Performance Tests

Two blocks are defined with different implementations of an algorithm. We can now use "measure" to record how long each took over 10 different iterations and see the standard deviation in the results.

The implementations can be found in *Implementations.swift*

**NB** If you can't see the values show the assistant editor with View->AssistantEditor->View Assistant Editor
*/

let swiftMaptest = measure(name: "Test swift map.") {
    swiftMap(["testData", "testData", "testData", "testData", "testData", "testData", "testData", "testData"])
}
