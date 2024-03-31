import UIKit

//Part 1
//Challange 1
//Q1 Which of the following is a valid statement
//1. let arrayl = [Int]()       Valid
//2. let array2 = []            Invalid
//3. let array3: [String] = []  Valid

//Q2
//let array4 = [1, 2, 3]  Valid
//print (array4[0])       Valid
//print (array4 [5])      Valid
//array4[1...2]           Valid
//array4[0] = 4           Invalid
//array4.append(4)        Invalid

//Q3
//var array5 = [1, 2, 3]               Valid
//array5[0] = array5 [1]               Valid
//array5[0...1] = [4, 5]               Valid
//array5[0] = "Six"                    Invalid
//array5 += 6                          Invalid
//for item in array5 { print(item) }   Valid




var arrSample = [2, 4, 3, 1, 8, 2, 5]

//Challange 2 Removing the first occurence of given element
func removingOnce(_ item: Int, from array: [Int]) -> [Int] {
    var array1 = array
    if let index = array1.firstIndex(of: item) {
        array1.remove(at: index)
    }
    return array1
}

print(removingOnce(2, from: arrSample))

print()

//Challange 3 Remove all occurences of a given number
func removing(_ item: Int, from array: [Int]) -> [Int] {
    var array1 = array
    while let index = array1.firstIndex(of: item) {
        array1.remove(at: index)
    }
    return array1
}

print(removing(2, from: arrSample))

print()

//Challange 4 Reversing an Array
func reversed(_ array: [Int]) -> [Int] {
    return array.reversed()
}

print(reversed(arrSample))

print()

//Challange 5 return the middle
func middle(_ array: [Int]) -> Int? {
    var arrLength = array.count
    var middleNum = 0
    var index = 0
    if arrLength % 2 == 0 {
        index = arrLength / 2 - 1
        middleNum = array[index]
    } else {
        index = arrLength / 2
        middleNum = array[index]
    }
    return middleNum
}

print(middle(arrSample)!)

print()

//Challange 6 Find the minimum and Maximum
func minMax(_ array: [Int]) -> (min: Int, max: Int)? {
    var minimumMaximum: (min: Int, max: Int)? = (array.min()!, array.max()!)
    return minimumMaximum
}

print(minMax(arrSample)!)

print()

//Challange 7 Which is valid
//let dict1: [Int, Int] = [:]  Invalid
//let dict2 = [:]              Invalid
//let dict3: [Int: Int] = [:]  Valid


let dict4 = ["One": 1, "Two": 2, "Three": 3]

//dict4[1]              Invalid
//dict4["One"]          Valid
//dict4["Zero"] = 0     Invalid
//dict4[0] = 0          Invalid

var dict5 = ["NY": "New York", "CA": "California"]
var dict6 = ["SA": "San Andreas", "MA": "Massachusetts"]

//dict5["NY"]                   Valid
//dict5["WA"] = "Washington"    Valid
//dict5["CA"] = nil             Valid



//Challange 8 long names
func longName(_ dictionary: [String: String]) -> [String] {
    var name: [String] = []
    for n in dict5.values {
        if n.count > 8 {
            name.append(n)
        }
    }
    return name
}

print(longName(dict5))

print()

//Challange 9 Merge Dictionaries
func merging(_ dict1: [String: String], with dict2: [String: String]) -> [String: String] {
    var newDict: [String: String] = [:]
    for (key, value) in dict1 {
        newDict[key] = value
    }
    for (key, value) in dict2 {
        newDict[key] = value
    }
    return newDict
}

print(merging(dict5, with: dict6))

//Challange 10 Count the characters

