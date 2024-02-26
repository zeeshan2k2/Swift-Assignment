import UIKit

//1. Declare a constant exercises with value 11 and a variable exercisesSolved with value 0. Increment this variable every time you solve an exercise (including this one).

let exercises = 11
var exercisesSolved = 0
exercisesSolved += 1

//2. Declare age so that it compiles. Did you use var or let?
//age = 16
//print(age)
//age = 30
//print(age)

print("Q2.")
print("Using var because we have to reassign value")
var age = 16
print(age)
age = 30
print(age)
exercisesSolved += 1


print()

////3. Consider the following code:
//let a: Int = 46
//let b: Int = 10
//Work out what answer equals when you replace the final line of code above with each of these options:
////1
//let answerl: Int = (a * 100) + b
//2
//let answer2: Int = (a * 100) + (b * 100)
//3
//let answer3: Int = (a * 100) + (b / 10)

print("Q3.")
let a: Int = 46
let b: Int = 10

let answerl: Int = (a * 100) + b
let answer2: Int = (a * 100) + (b * 100)
let answer3: Int = (a * 100) + (b / 10)

print("answer1: \(answerl)")
print("answer2: \(answer2)")
print("answer3: \(answer3)")
exercisesSolved += 1

print()

//4. Add parentheses to the following calculation. The parentheses should show the order in which the operations are performed and should not alter the result of the calculation.
//5 * 3 - 4/2 * 2
print("Q4.")
let myAnswerWithParenthesis = (5 * 3) - (4/2 * 2)
let actualAnswer = 5 * 3 - 4/2 * 2
print("The actual answer is \(actualAnswer)")
print("My answer to the question4 with parenthesis '(5 * 3) - (4/2 * 2)' is: \(myAnswerWithParenthesis)")
exercisesSolved += 1

print()

//5. Declare two constants a and b of type Double and assign both a value. Calculate the average of a and b and store the result in a constant named average.
print("Q5.")
let A: Double = 10
let B: Double = 12
let average = (A + B)/2
print("The average of \(A) and \(B) is equal to \(average)")
exercisesSolved += 1

print()

//6. A temperature expressed in °C can be converted to °F by multiplying by 1.8 then incrementing by 32. In this challenge, do the reverse: convert a temperature from °F to °C. Declare a constant named fahrenheit of type Double and assign it a value. Calculate the corresponding temperature in °C and store the result in a constant named celcius.

print("Q6.")
let fahrenheit: Double = 47
let celcius: Double = (fahrenheit - 32) / 1.8
print("fahrenheit: \(fahrenheit) is equal to celcius: \(celcius)")
exercisesSolved += 1

print()

//7.Suppose the squares on a chessboard are numbered left to right, top to bottom, with 0 being the top-left square and 63 being the bottom-right square. Rows are numbered top to bottom, 0 to 7. Columns are numbered left to right, 0 to 7. Declare a constant position and assign it a value between 0 and 63. Calculate the corresponding row and column numbers and store the results in constants named row and column.

print("Q7. ")
let position = 41
let row = ceil(Double(position) / 8)
let column = (position % 8)
print("Position is \(position)")
print("Row is", Int(row))
print("Column is", column)
print("This was a bit tricky!")

print()

//8. Declare constants named dividend and divisor of type Double and assign both a value. Calculate the quotient and remainder of an integer division of dividend by divisor and store the results in constants named quotient and remainder. Calculate the remainder without using the operator %.

print("Q8.")
var dividend: Double = 25
var divisor: Double = 12
let quotient = dividend / divisor
var remainder: Double = 0
var remainderFound = 0
while remainderFound == 0 {
    if dividend > divisor {
        remainder = dividend - divisor
    }
    remainderFound += 1
}

print("dividend: \(dividend)")
print("divisor: \(divisor)")
print("quotient: \(quotient)")
print("remainder: \(remainder)")

