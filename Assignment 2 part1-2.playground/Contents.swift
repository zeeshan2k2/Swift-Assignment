import UIKit

// 1. What will the value of sum in the following loop
//
//var sum = 0
//for i in 0...5 {
//    sum += i
//}

//Ans. 15

//2. In the while loop below how many instances of character "a" will be there in aLotOfAs

var aLotOfAs = ""
while aLotOfAs.count < 10 {
    aLotOfAs += "a"
}
print(aLotOfAs.count)
print()

//Ans. 10

//3. Consider the following switch statements
//let coordinates = (1, 5, 0)
//let coordinates = (2, 2, 2)
//let coordinates = (3, 0, 1)
//let coordinates = (3, 2, 5)
//let coordinates = (0, 2, 4)

//switch coordinates {
//
//case let (x, y, z) where x == y && y == z:
//    print("x = y = z")
//case (_, _, 0):
//    print("on the x/y plane")
//case (_, 0, _):
//    print("on the x/z plane")
//case (0, _, _):
//    print("on the y/z plane")
//default:
//    print("Nothing special")
//}

//Answer:
//let coordinates = (1, 5, 0) // on the x/y plane
//let coordinates = (2, 2, 2) // x = y = z
//let coordinates = (3, 0, 1) // on the x/z plane
//let coordinates = (3, 2, 5) // Nothing special
//let coordinates = (0, 2, 4) // on the y/z plane


//4. A closed range can never be empty. Why?

//Ans. Because a closed range always has a starting and end range meaning even if it is 1...1 it will consist of one value which is 1

//5. print countdown from 10 to 0

var num = 10
for i in 0...10 {
    print(num)
    num -= 1
}

print()
//6. Print 0.0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.6, 0.7, 0.8, 0.9, 1.0.

var number: Double = 0.0

for i in 0...10 {
    print(String(format: "%.1f", number))
    number += 0.1
}

        
