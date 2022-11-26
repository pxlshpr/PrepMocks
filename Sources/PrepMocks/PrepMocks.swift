import Foundation
import PrepDataTypes

public struct PrepMocks {
    public private(set) var text = "Hello, World!"

    public init() {
        let start = CFAbsoluteTimeGetCurrent()
        
        let carrot = FoodMock.carrots
        guard let quantityWeWant = FoodQuantity(1, .tablespoonUS, "chopped4", carrot) else { return }
        guard let scaleFactor = carrot.nutrientScaleFactor(for: quantityWeWant) else {
            print("We couldn't get the scale factor")
            return
        }
        ///88.5921875
        
        print("We here, took: \(CFAbsoluteTimeGetCurrent()-start)s")
    }
}
