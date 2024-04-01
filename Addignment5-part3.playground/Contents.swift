import UIKit

// Challange A Repeating Yourself
func repeatTask(times: Int, task: () -> Void) {
    for i in 1...times {
        task()
    }
}


repeatTask(times: 5) {
    print("Hello World")
}

print()

//Challange B Closure Sums

func mathSums(length: Int, series: (Int) -> Int) -> Int {
    var sum = 0
    for i in 1...length {
        sum += series(i)
    }
    return sum
}

print(mathSums(length: 10) {
    $0
})

print()

//Challange C Functional Ratings
let appRatings = [
    "Calendar Pro": [1, 5, 5, 4, 2, 1, 5, 4],
    "The Messenger": [5, 4, 2, 5, 4, 1, 1, 2],
    "Socialise": [2, 1, 2, 2, 1, 2, 4, 2]
]

// Calculate average ratings
var averageRatings: [String: Double] = [:]

appRatings.forEach { (appName, ratings) in
    let averageRating = Double(ratings.reduce(0, +)) / Double(ratings.count)
    averageRatings[appName] = averageRating
}

// Filter apps with average rating greater than 3
let highRatedApps = averageRatings.filter { $0.value > 3 }.map { $0.key }

print("Apps with average rating greater than 3:", highRatedApps)


