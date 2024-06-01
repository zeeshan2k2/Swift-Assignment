import UIKit


// challange 1: Adding raw values
enum Coin: Int {
    case penny = 1
    case nickel = 5
    case dime = 10
    case quarter = 25

}

var num = 0

let coinPurse: [Coin] = [.penny, .quarter, .nickel, .dime, .penny, .dime, .quarter]

for coinName in coinPurse {
    num += coinName.rawValue
}

print("\(num) is the total number of cents in the array.")

print()


// challange 2: Computing with raw values
enum Month: Int {
    case january = 1, february, march, april, may, june, july, august, september, october, november, december
    
        var monthsUntilSummerBreak: Int {
            Month.june.rawValue - self.rawValue
        }
}

let monthSelected = Month.november
var monthForSummerBreak = monthSelected.monthsUntilSummerBreak
if monthForSummerBreak < 0 {
    monthForSummerBreak = (12 - monthSelected.rawValue) + Month.june.rawValue
}
print("this is the number of months until summer \(monthForSummerBreak)")


print()


//challange 3: pattern maching enumeration values
enum Direction {
    case north
    case south
    case east
    case west
}

let movements: [Direction] = [.north, .north, .west, .south, .west, .south, .south, .east, .east, .south, .east]

var location = (x: 0, y: 0)

for directionValue in movements {
    switch directionValue {
    case .east:
        location.x += 1
    case .north:
        location.y += 1
    case .south:
        location.y -= 1
    case .west:
        location.x -= 1
    }
}

print("The value of final location is x: \(location.x) and y: \(location.y)")
