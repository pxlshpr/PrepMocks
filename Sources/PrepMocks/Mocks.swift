import Foundation
import PrepDataTypes

//MARK: Food

public struct FoodMock {
    static func load(_ identifier: Identifier) throws -> Food {
        try loadMock(Food.self, named: "food-\(identifier.rawValue)")
    }
    
    enum Identifier: String {
        case carrots = "carrots"
        case peanutButter = "peanutButter"
        case wheyProtein = "wheyProtein"
    }
    
    public static var carrots: Food { try! load(.carrots) }
    public static var peanutButter: Food { try! load(.peanutButter) }
    public static var wheyProtein: Food { try! load(.wheyProtein) }
}

//MARK: BodyProfile

public struct BodyProfileMock {
    static func load(_ identifier: Identifier) throws -> BodyProfile {
        try loadMock(BodyProfile.self, named: "bodyProfile-\(identifier.rawValue)")
    }
    
    enum Identifier: String {
        case calculated = "calculated"
    }
    
    public static var calculated: BodyProfile { try! load(.calculated) }
}

//MARK: GoalSets

public struct DietMock {
    static func load(_ identifier: Identifier) throws -> GoalSet {
        try loadMock(GoalSet.self, named: "diet-\(identifier.rawValue)")
    }
    
    enum Identifier: String {
        case cutting = "cutting"
    }
    
    public static var cutting: GoalSet { try! load(.cutting) }
}

public struct MealTypeMock {
    static func load(_ identifier: Identifier) throws -> GoalSet {
        try loadMock(GoalSet.self, named: "mealType-\(identifier.rawValue)")
    }
    
    enum Identifier: String {
        case preWorkout = "preWorkout"
    }
    
    public static var preWorkout: GoalSet { try! load(.preWorkout) }
}

//MARK: Meal

public struct MealMock {
    static func load(_ identifier: Identifier) throws -> Meal {
        try loadMock(Meal.self, named: "meal-\(identifier.rawValue)")
    }
    
    enum Identifier: String {
        case preWorkoutEmpty = "preWorkoutEmpty"
        case preWorkoutWithItems = "preWorkoutWithItems"
    }
    
    public static var preWorkoutEmpty: Meal { try! load(.preWorkoutEmpty) }
    public static var preWorkoutWithItems: Meal { try! load(.preWorkoutWithItems) }
}

//MARK: Day

public struct DayMock {
    static func load(_ identifier: Identifier) throws -> Day {
        try loadMock(Day.self, named: "day-\(identifier.rawValue)")
    }
    
    enum Identifier: String {
        case cutting = "cutting"
    }
    
    public static var cutting: Day { try! load(.cutting) }
}
