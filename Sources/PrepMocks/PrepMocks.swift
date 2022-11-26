import Foundation
import PrepDataTypes

public struct PrepMocks {
    public private(set) var text = "Hello, World!"

    public init() {
        let start = CFAbsoluteTimeGetCurrent()
//
//        let carrot = FoodMock.carrots
//        let wheyProtein = FoodMock.wheyProtein
//
//        var meal = MealMock.preWorkoutEmpty
//
//        let carrotFoodItem = FoodItem(
//            id: UUID(),
//            food: carrot,
//            parentFood: nil,
//            meal: meal,
//            amount: FoodValue(
//                value: 50,
//                unitType: .weight,
//                weightUnit: .g,
//                volumeExplicitUnit: nil,
//                sizeUnitId: nil,
//                sizeUnitVolumePrefixExplicitUnit: nil
//            ),
//            markedAsEatenAt: nil,
//            sortPosition: 0,
//            syncStatus: .notSynced,
//            updatedAt: 0,
//            deletedAt: nil
//        )
//        let wheyFoodItem = FoodItem(
//            id: UUID(),
//            food: wheyProtein,
//            parentFood: nil,
//            meal: meal,
//            amount: FoodValue(
//                value: 30.4,
//                unitType: .weight,
//                weightUnit: .g,
//                volumeExplicitUnit: nil,
//                sizeUnitId: nil,
//                sizeUnitVolumePrefixExplicitUnit: nil
//            ),
//            markedAsEatenAt: nil,
//            sortPosition: 0,
//            syncStatus: .notSynced,
//            updatedAt: 0,
//            deletedAt: nil
//        )
//
//        meal.foodItems = [
//            MealFoodItem(from: carrotFoodItem),
//            MealFoodItem(from: wheyFoodItem),
//        ]
//        writeEncodableToJSON(meal, type: "Meal")

        var meal = MealMock.preWorkoutWithItems

        print("We here, took: \(CFAbsoluteTimeGetCurrent()-start)s")
    }
}
