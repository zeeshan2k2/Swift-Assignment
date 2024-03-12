import UIKit

var greeting = "Hello, playground"
print(greeting)

//1. Create a constant called coordinates and assign a tuple containing two and three to it.
let constant: (Int, Int) = (2, 3)

print()

//2. Create a constant called namedCoordinate with a row and column component.
let namedCoordinate: (row: Int, column: Int) = (5, 7)

print()

//3. Which of the following are valid statements?
//let character: Character = "Dog"
//let character: Character = "@"
//let string: String = "Dog"
//let string: String = "@"

// ANS: All the statements are valid except the 2nd statement.

print()

//4. Is this valid code?
//let tuple = (day: 15, month: 8, year: 2015)
//let day = tuple.Day

//ANS: No, It is invalid because it should be tuple.day not tuple.Day (Day variable doesn't exist in tuple variable.)

//5. What is wrong with the following code?
//let name = "Matt"
//name += " Galloway"

//ANS: name is immutable, and it's value cannot be reassigned. We're trying to reassign a value to immutable variable.

print()

//6. What is the type of the constant called value?
//Let tuple = (100, 1.5, 10)
//let value = tuple.1

//ANS: It is of type double because the value it refers to in the tuple is 1.5.

print()

//8. What is the value of the constant called summary?
//let number = 10
//let multiplier = 5
//let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
print("Q8.")
let number = 10
let multiplier = 5
let summary = "\(number) multiplied by \(multiplier) equals \(number * multiplier)"
print("This is the value of constant summary:",summary)

print()
//9. What is the sum of a, b minus c?
//let a = 4
//let b: Int32 = 100
//let c: UInt8 = 12

print("Q9.")
let a = 4
let b: Int32 = 100
let c: UInt8 = 12

print("This is the value of a, b minus c:", a + Int(b) - Int(c))

print()

//PRACTICE SET 5

//1. What's wrong with the following code?
let firstName = "Matt"
if firstName == "Matt" {
    let lastName = "Galloway"
} else if firstName == "Ray" {
    let lastName = "Wenderlich"
}

//We're trying to create an immutable variable in the scope of if else block. The value
//cannot be accessed outside the loop, that's why it gives an error. To fix this create a mutable variable outside the
//if else block and then reassign in the if else block

print()

//2. In each of the following statements, what is the value of the Boolean answer constant?
//let answer = true a true
//let answer = false | false
//Let answer = (110 2) 5)66 (11682)=89<1

//ANS:
//let answer = true && true // true
//let answer = false || false // false
//let answer = (true && 1 != 2) || (4 > 3 && 100 < 1) // true
//let answer = ((10 / 2) > 3) && ((10 % 2) == 0) // true






