import UIKit

//Q1. which of the following is a valid statement
//var name: String? = "Ray"  // valid
//var age: Int = nil         // invalid
//let distance: Float = 26.7  // valid
//var middleName: String? = nil  // valid


//Q2. Create a function that returns the number of times an integer can be divided by another without an integer

func divideIfWhole(_ value: Int, by divisor: Int) -> Int? {
    let dividing = value % divisor
    if dividing != 0 {
        return nil
    } else {
        return value / divisor
    }
}

if let result = divideIfWhole(10, by: 2) {
    print("Yep, it divides \(result) times.")
} else {
    print("Not divisible :[")
}

print()

//Q3. Refactor and reduce using nil coalescing

var result1 = divideIfWhole(10, by: 3) ?? 0
print("It divides by \(result1) times")

//Q4. Nested Optionals

let number: Int??? = 10
//print(number)
//print(number!)

//a. fully force unwrap and print optional
print(number!!!)

//b. Optionally bind and print number with if let
if let numberExists = number {
    print(numberExists!!)
} else {
    print("number doesn't exist")
}

//write a function printNumber(_ number: Int???) that uses guard to print the number if it is bound

func printNumber(_ number: Int???) {
    guard let pNumber = number else {
        print("Number doesn't exist")
        return
    }
    print("\(number!!!) is the number")
}

printNumber(10)



        
